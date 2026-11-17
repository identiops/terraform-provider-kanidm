# Changelog

All notable changes to this project will be documented in this file.

## [0.3.1] - 2026-11-17

### Miscellaneous Tasks

- [dc00027](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/dc00027ed292f9fe0700c2ae3e206ba1a91019ea) Add environment configuration

## [0.3.0] - 2026-11-17

### Miscellaneous Tasks

- [1e24317](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/1e24317a51da50622d74293e1539dff23c9d7d4d) Update dependencies
- [1b07e95](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/1b07e953261a6e42b01278ed0b943355d07cfc46) Replace make with just
- [de5d272](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/de5d272d9ac75706b489990ba885a46fbcf969a4) Reconfiguration for jceb
- [52dcf08](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/52dcf082c74b0a632fd9327592887c0b9a9ac3d3) Mark the provider as inofficial
- [42e3c96](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/42e3c9601d51d14d135072ea5ae73127fd7bebb0) Tidy configuration
- [8fcb312](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/8fcb31287185fc7967b5f29a76269a80ef3a69fc) Update dependencies
- [38e1a1c](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/38e1a1c7ec06168a7098f1b1c3fa2e0be8fe0c84) Migrate from devbox to plain nix flakes
- [77e75c2](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/77e75c258cb1b69f7693567b2c34741d593e0c14) Cleanup configuration and complete migration to identiops
- [370d5a6](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/370d5a6d92e657e9c534a8241fdbdbf6b9e38472) Add manifest

## [0.1.10] - 2026-05-31

### Bug Fixes

- [50c05ed](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/50c05edbcb552bbaac30a05a8f910b5890f31dac) Group members and RBAC read-back
- [366c920](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/366c920896a194248c80c1faacc8b49b98031ada) Format-preserving identifiers, group entry_managed_by Set->String, URL encoding, skip empty updates

## [0.1.9] - 2026-05-31

### Added Features

- [5e1ac3f](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/5e1ac3ffabca81ed2a9bb10e17c801b45c5ddd1f) Add generate_api_token, fix entry_managed_by as single-value, fix displayname read-back

## [0.1.8] - 2026-05-30

### Bug Fixes

- [4b92c58](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/4b92c58e47d190d68a9defc0444dc382d4b39d07) Handle empty description as null and stop stripping origin trailing slash

## [0.1.7] - 2026-05-30

### Bug Fixes

- [29d71e2](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/29d71e2295860fe327064e2bfed3957f088f89ad) Suppress gidnumber and valid_from drift for non-POSIX groups

## [0.1.6] - 2026-05-29

### Bug Fixes

- [3e77911](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/3e779117e3348ded568f1c9f139aeacbd868d819) Use posixgroup class for group POSIX detection instead of Unix token

## [0.1.5] - 2026-05-29

### Bug Fixes

- [d1d22d0](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/d1d22d01f6fe426b1b9883b5ba18a4ab0cf50aeb) Scope map output
- [73e5934](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/73e593411619f4c23040279bba991bf8ee4c00f6) Remove auto-GID fallback for non-POSIX groups

## [0.1.4] - 2026-05-28

### Other

- [d55f068](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/d55f0681389a5d44b7626799b310a2012d0790fc) Fix release attestations

## [0.1.3] - 2026-05-28

### Other

- [f62bfd4](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/f62bfd4153df7eac6b6b375ae958a8d4b0f13355) Setup release attestations

## [0.1.2] - 2026-05-28

### Miscellaneous Tasks

- [0a29c41](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/0a29c413f989404221afe40bf4e7a4075b915d32) Bump golang version

## [0.1.1] - 2026-05-28

### Added Features

- [185c9b1](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/185c9b1e96ed542382bf2cf16faf848a31c75797) Implement Phase 2 - provider scaffold and Kanidm client
- [a4f15ff](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/a4f15ff3ee02081132096dfb8fd2dd893edc9b99) Implement Phase 3 - person resource with full CRUD operations
- [76f819c](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/76f819cb6adbe77c94009684dd2088e618d191bf) Implement service account, group, and OAuth2 basic resources
- [c1e689f](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/c1e689ffd1481597c4c99dd2bf1ad2da2c51b514) Add displayname support
- [**breaking**] [c3c7b89](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/c3c7b897fcc2760cd182f3fef6afc2c6be2a5200) Add entry_managed_by support
- [278c645](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/278c6451aaaed7c967f2e0ffe51474c34c69a8b4) Convert state to use entry uuids rather than names
- [e40b4b4](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/e40b4b4163af050007967edfb8a18ad410e30d97) Add scope, claim support
- [a46a8eb](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/a46a8eb90d40c4d40dab0cc4e1ca58dee1489aa7) Add public client resource
- [914536e](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/914536e3a6adac19277a1fae5643c30792a1466d) Add legalname management support
- [800029e](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/800029e35bfc4bd6363a5bd79fb35695c7b29230) Add validity and normalize managed-by references
- [7712757](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/7712757982485a400462950f1b6be1987ad42f48) Add delegated admin and uuid-backed nested members
- [88ab581](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/88ab5811a6a9607a1339e28e0efda21b0948d5a7) Add subset-managed membership resource
- [743f521](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/743f521c18c556f5d4c2436dff0a1accdefbe947) Add POSIX, mail, and managed membership support
- [361f145](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/361f1457bdd036e18b1364ba60050d60b7818094) Add kanidm-tf-import tool for generating Terraform config from live Kanidm instances
- [747e970](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/747e97096050a87912e106646b8c3ee83525477c) Add account policy and system denied names resources
- [c87ada3](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/c87ada35d48f96bada473c1b3bf9cc9df37d5efd) Add kanidm application resource and tls skip verify
- [e0f3aa8](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/e0f3aa86bae471c6bc2bc2fac2e00d8d196f0e7f) Add advanced flags and normalize set semantics

### Bug Fixes

- [c90f918](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/c90f91806e8b308c2e38ae5ba600c98e8174fa99) Populate entry_managed_by in Create response
- [61d932c](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/61d932c8683ad717ac7c6a438888200a3553ef02) Resolve credential_reset_token unknown value bug

### Documentation

- [9b6e392](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/9b6e39268a0a07fd7b438f9ce7e150dad8865158) Document OAuth2 secret retrieval and bug fixes
- [4711283](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/4711283b47ee5767ad84e200e2cecb9b05ac9fdb) Add Claude Code and agent instructions
- [32a2e09](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/32a2e09990615d6eec269f0bd2b6df57478b9d2c) Generate registry docs and update provider namespace

### Miscellaneous Tasks

- [2063577](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/2063577272e9b9d2f573c7c2813d91fcb263270b) Initialize terraform-provider-kanidm repository
- [cc9d192](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/cc9d192df259a9129bbbeb41a02eb0f468d24088) Add beads issue tracking and direnv integration
- [a3443d0](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/a3443d059bdfb7f305575e7a16682b2185aebe71) Enable beads sync-branch in config
- [70f94e6](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/70f94e6d6ea00c827a6f37e05a0244cb86757565) Format sources
- [73234cb](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/73234cb6942219f38d4cb0d43102be55466af4c9) Set up releases
- [cca6f0d](https://forge.41ppl.com/identiops/terraform-provider-kanidm/commit/cca6f0d0aee7aebb256e6f0750ddcb6b7f623627) Disable windows arm builds

<!-- generated by git-cliff -->
