#!/usr/bin/env -S just --justfile
# Documentation: https://just.systems/man/en/

import ".justlib/bump.just"

set shell := ['bash', '-euo', 'pipefail', '-c']

NAME := "kanidm"
NAMESPACE := "jceb"
ARCH := arch()
OS := os()

# Print this help
default:
    @just -l

# Build the provider
build:
    #!/usr/bin/env nu
    let name = "{{ NAME }}"
    go build -o $"terraform-provider-($name)"

# Install the provider locally for testing
install: build
    #!/usr/bin/env nu
    let namespace = "{{ NAMESPACE }}"
    let name = "{{ NAME }}"
    # See https://gist.github.com/asukakenji/f15ba7e588ac42795f421b48b8aede63
    let goos = match "{{ OS }}" {
      "macos" => "darwin"
      "linux" => "linux"
      _ => { error make "Operation system not yet supported" }
    }
    let goarch = match "{{ ARCH }}" {
      "aarch64" => "arm64"
      "x86_64" => "amd64"
      _ => { error make "Achitecture not yet supported" }
    }
    mkdir ($"~/.terraform.d/plugins/registry.terraform.io/($namespace)/($name)/0.1.0/($goos)_($goarch)/" | path expand)
    cp -v $"terraform-provider-($name)" ($"~/.terraform.d/plugins/registry.terraform.io/($namespace)/($name)/0.1.0/($goos)_($goarch)/" | path expand)
    mkdir ($"~/.terraform.d/plugins/registry.opentofu.org/($namespace)/($name)/0.1.0/($goos)_($goarch)/" | path expand)
    cp -v $"terraform-provider-($name)" ($"~/.terraform.d/plugins/registry.opentofu.org/($namespace)/($name)/0.1.0/($goos)_($goarch)/" | path expand)

# Run unit tests
test:
    go test -v ./...

# Run acceptance tests
testacc:
    TF_ACC=1 go test -v -timeout 30m ./internal/provider/

# Generate provider code from OpenAPI schema
generate:
    @echo "Generating provider code from OpenAPI schema..."
    tfplugingen-openapi generate \
      --config internal/spec/generator_config.yml \
      --output internal/spec/provider_code_spec.json \
      internal/spec/kanidm-openapi.json
    tfplugingen-framework generate all \
      --input internal/spec/provider_code_spec.json \
      --output internal/provider

# Development
deps:
    go mod download
    go mod tidy

# Format code
fmt:
    go fmt ./...

# Format Justfile
format:
    @just --fmt --unstable

# Run linter
lint:
    golangci-lint run

# Clean build artifacts
clean:
    #!/usr/bin/env nu
    let name = "{{ NAME }}"
    rm -vpf $"terraform-provider-($name)"
    rm -vpf internal/spec/provider_code_spec.json
    rm -vprf dist/
