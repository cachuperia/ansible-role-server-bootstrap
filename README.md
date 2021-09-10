# ansible-role-server-bootstrap
Ansible role for Ubuntu server bootstrap

## Prerequisites
- [Ansible][ans] >=2.9 installed globally
- [git][git] installed globally (if you plan to use this repo locally)

#### Available tags
`make tasks`

#### Available variables
[defaults/main.yml](defaults/main.yml)

#### Usage
##### In playbooks
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
##### Directly on localhost
If you want to install all plays on your localhost. Copy file `test.yml` and run:
`ansible-playbook test.yml`
or
`sudo ansible-playbook test.yml`

[ans]: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu
[git]: https://git-scm.com/download/linux
