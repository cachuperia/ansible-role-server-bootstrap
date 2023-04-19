# ansible-role-server-bootstrap

Ansible role for **Ubuntu 22.04 LTS** server bootstrap.

## Prerequisites

- [Ansible][ans] v**2.10** installed on host system
- [git][git] installed on host system

## Usage

Run `make` for list all available targets.

### Directly on localhost

```shell
git clone git@github.com:IaroslavR/ansible-role-server-bootstrap.git
cd ansible-role-server-bootstrap
ansible-playbook test.yml  # sudo without password, play all tasks
```
or, as example, with `sudo` password, play only tagged tasks
```shell
ansible-playbook test.yml --extra-vars "ansible_sudo_pass=<sudo password>" --tags "<tag1>,<tag2>"
```

### In playbooks

After Ansible will be installed you have to install a role `server-bootstrap` from this repo.
An easiest way to do it is to create a playbook `requirements.yaml` with the following content:
```yaml
---
roles:
  - src: git+ssh://git@github.com/IaroslavR/ansible-role-server-bootstrap.git
    scm: git
    version: master
    name: server-bootstrap
```
and install it with `ansible-galaxy`: `ansible-galaxy install -r requirements.yaml`

You can use this role in your playbook now to provision remote servers. Just add this role to it:
```yaml
  roles:
    - role: server-bootstrap
```

### Available tasks and corresponding tags

`make tasks`

### Available variables

[defaults/main.yml](defaults/main.yml)

## Contribute

Use [Conventional Commits][cc] message style.

[ans]: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu
[git]: https://git-scm.com/download/linux
[cc]: https://www.conventionalcommits.org/en/v1.0.0/
