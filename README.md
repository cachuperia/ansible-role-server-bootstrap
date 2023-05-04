# ansible-role-server-bootstrap

![checks][checks] ![release][release]

## Table Of Contents

* [About](#about)
* [Usage](#usage)
  * [Requirements](#requirements)
  * [Role Variables](#role-variables)
  * [Role Tags](#role-tags)
  * [Usage Example](#usage-example)
* [Contributing](#contributing)

## About

This [Ansible][ans] role is designed to bootstrap a development server running Ubuntu 22.04 LTS.

## Usage

### Requirements

- Minimum Ansible version: `2.10`

### Role Variables

```yaml
cache_valid_time: 3600

apt_packages:
  - apt-transport-https
  - avahi-daemon
  - avahi-utils
  - byobu
  - ca-certificates
  - curl
  - direnv
  - git
  - gnupg-agent
  - htop
  - iotop
  - jq
  - lsb-release
  - make
  - multitail
  - podman
  - python3
  - python3-pip
  - software-properties-common
  - unzip
  - wget
  - whois

pyenv_version: 2.3.17

python_version: 3.10.11  # default Python for user

pipx_packages:
  - awscli
  - cookiecutter
  - detect-secrets
  - pre-commit
  - yq

asdf_version: 0.11.3
asdf_plugins:
  - name: github-cli
    repo: https://github.com/bartlomiejdanek/asdf-github-cli.git
  - name: lazydocker
    repo: https://github.com/comdotlinux/asdf-lazydocker.git
  - name: nodejs
    repo: https://github.com/asdf-vm/asdf-nodejs.git
  - name: packer
    repo: https://github.com/asdf-community/asdf-hashicorp.git
  - name: sops
    repo: https://github.com/feniix/asdf-sops.git
  - name: terraform
    repo: https://github.com/asdf-community/asdf-hashicorp.git
  - name: terraform-docs
    repo: https://github.com/looztra/asdf-terraform-docs
  - name: terragrunt
    repo: https://github.com/ohmer/asdf-terragrunt
  - name: tflint
    repo: https://github.com/skyzyx/asdf-tflint
asdf_global:
  - name: lazydocker
    version: latest
  - name: github-cli
    version: latest
  - name: sops
    version: latest
```

### Role Tags

- **_asdf_** - Install `asdf`, `asdf` plugins and globally available tools, configure `.bashrc`.
- **_base_** - Install common `apt` packages, configure `.bashrc` and `.ssh/config` for user.
- **_docker_** - Configure official Docker repository as `apt` source, install `docker`.
- **_pipx_** - Install `pipix` and globally available tools, configure `.bashrc`.
- **_poetry_** - Install/update `poetry`, configure `.bashrc`.
- **_psql_** - Configure official `PostgreSQL` repository as `apt` source, install `psql` client.
- **_python_** - Install/update `pyenv`, build Python `python_version`, and configure it as global for user.
- **_vagrant_** - Install `virtualbox` and `vagrant`

### Usage Example

Create `requirements.yml` file:

```yaml
# requirements.yml
roles:
  - src: git+ssh://git@github.com/cachuperia/ansible-role-server-bootstrap.git
    scm: git
    version: v1.1.0
```

Install role:

```shell
ansible-galaxy install -r requirements.yml
```

Create `playbook.yml`:

```yaml
# playbook.yml
- hosts: servers
  roles:
    - role: ansible-role-server-bootstrap
      default_user_python_version: 3.11.11
```

Run playbook:

```shell
ansible-playbook playbook.yml --extra-vars "ansible_sudo_pass=<sudo password>" --tags "<tag1>,<tag2>" --skip-tags "<tag>"
```

## Contributing

Commit message style - [Conventional Commits][cc].

### Prerequisites

Tools to install: [git][g], [pre-commit][pk], [vagrant][vg] and [detect-secrets][ds].

You can use [this][a] playbook for automated tools installation.

### Setup Local Environment

```shell
git clone git@github.com:cachuperia/ansible-role-server-bootstrap.git
cd ansible-role-server-bootstrap
make init
```

Run `make` to list all available targets.

### Testing

```shell
make test
```

### CD/CI

- `check` GitHub [workflow][wch].
- `release` GitHub [workflow][wr]. Release commit types: `fix`, `feat`.


[a]: https://github.com/IaroslavR/ansible-role-server-bootstrap
[ans]: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu
[cc]: https://www.conventionalcommits.org/en/v1.0.0/
[ds]: https://github.com/Yelp/detect-secrets#installation
[g]: https://www.atlassian.com/git/tutorials/install-git
[pk]: https://pre-commit.com/#install
[vg]: https://www.vagrantup.com/

[wch]: .github/workflows/checks.yml
[wr]: .github/workflows/release.yml

[checks]: https://github.com/cachuperia/blueprint-general/actions/workflows/checks.yml/badge.svg
[release]: https://github.com/cachuperia/blueprint-general/actions/workflows/release.yml/badge.svg
