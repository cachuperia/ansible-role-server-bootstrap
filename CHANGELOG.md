# Changelog

<!--next-version-placeholder-->

## v1.1.0 (2023-04-30)
### Feature
* Add `vagrant`, `lazydocker` and `cookiecutter` ([`2f21473`](https://github.com/cachuperia/ansible-role-server-bootstrap/commit/2f21473d0bf9aa368d8cd5e6bca5aeea3da21eb0))

## v1.0.1 (2023-04-25)
### Fix
* Execute as root ([`07ea86b`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/07ea86bcffdc9c35b63b355a5d3914897c8006a8))

## v1.0.0 (2023-04-19)
### Feature
* Use `22.04 LTS` as runtime ([`6a7f103`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/6a7f103f51768922941d9d42c8091aa53c9a5003))

### Breaking
* use `22.04 LTS` as runtime ([`6a7f103`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/6a7f103f51768922941d9d42c8091aa53c9a5003))

### Documentation
* Clarify Ubuntu version ([`b2856f8`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/b2856f87153a47257dd9ff6a65dbe79587a307e6))

## v0.11.2 (2022-04-04)
### Fix
* Add `asdf` `Install plugins` task ([`29f89cf`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/29f89cf6a513969fdafa1873b87748a0a93b65c0))

## v0.11.1 (2022-04-04)
### Fix
* Add `asdf` plugins ([`8a14c35`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/8a14c354b8f5de2c6e6dba5d3a9600175c5e1d60))

## v0.11.0 (2022-04-04)
### Feature
* Add `asdf` ([`2f684cd`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/2f684cde00b6caf3558a50e7e173b6e89bb18cd8))

## v0.10.0 (2022-03-31)
### Feature
* Add PostgreSQL client ([`1314782`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/13147822be3038fcecf47af7d1556bbfef27bf31))

## v0.9.3 (2022-02-05)
### Fix
* Docker user without sudo ([`59ccc06`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/59ccc063d6df508944e5599566eab095e33e1d59))

## v0.9.2 (2022-02-04)
### Fix
* Revert fix user name in docker task ([`7c95fd4`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/7c95fd4d57a2a3dc6a1182e6b011197fd2f85d61))

## v0.9.1 (2022-02-04)
### Fix
* User name in docker task ([`b7d49d3`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/b7d49d3bbc75b47f935888f47076d171d088570d))

## v0.9.0 (2022-01-27)
### Feature
* Essential cli tools to install ([`ee2b375`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/ee2b375f3975e2013329250aea4d7e1cc5eea054))

### Fix
* Pipx installation ([`f81d53b`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/f81d53b1ed77a85e0648381185b51ec537216572))
* Poetry installation ([`b5037ee`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/b5037ee03186c8c2eafb772c414f403e76bbded0))
* Pyenv global Python check ([`df72296`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/df72296847c1db2517e73373b317e8444f840878))

### Documentation
* Clarify usage examples ([`e523060`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/e5230608af85b846b4c2815feaac425887f99be6))

## v0.8.0 (2022-01-19)
### Feature
* Add Docker installation task ([`ed8125e`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/ed8125ee6af8b33d146f607d6c91b9373aeb3744))
* Bump base Python to 3.8.12 ([`f73edf0`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/f73edf08684a060a9bf7dcbf791059b08c0e0d2e))

## v0.7.0 (2022-01-16)
### Feature
* Bump terraform toolchain ([`a125881`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/a12588177d720090d0ba4d0e92bc2df54bee5247))

## v0.6.2 (2021-12-28)
### Fix
* Pyenv install default python task ([`8e13786`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/8e137861b5291929544518dfa68b7c603682f340))
* Pyenv .bashrc block ([`c614e99`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/c614e99118783c760c9a22da458333e7f141e1c6))

## v0.6.1 (2021-09-20)
### Fix
* Sops not updated, due to `<version> is available` in the help string ([`fafacbe`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/fafacbe803776e8aaee93a8a5db560f27db2bdfe))

### Documentation
* **fix:** Remove sudo based command as not relevant ([`3ca41aa`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/3ca41aa44693eff6bd3fbcf0f7bdb83a60b7cbc2))

## v0.6.0 (2021-09-20)
### Feature
* Bump sops to 3.7.1 ([#17](https://github.com/IaroslavR/ansible-role-server-bootstrap/issues/17)) ([`f435203`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/f43520369f84ecb2ed8c09b038cbe0bb487cf6d5))

## v0.5.0 (2021-04-25)
### Feature
* Bump terragrunt to 0.28.24, tflint to 0.28.0 and pin terraform version to 0.14.10 ([`2b28341`](https://github.com/IaroslavR/ansible-role-server-bootstrap/commit/2b283411a9860adc0a55e28b5cbe5d6b2a20b185))
