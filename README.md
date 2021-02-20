# ansible-role-server-bootstrap
Ansible role for Ubuntu server bootstrap

#### Available tags
`make tasks`

#### Available variables
[defaults/main.yml](defaults/main.yml)

#### Usage
##### In playbooks
Add this role to the playbook `requirements.yml`
```yaml
- src: git+ssh://git@github.com/IaroslavR/ansible-role-server-bootstrap.git
  scm: git
  version: master
  name: server-bootstrap
```
and use it
```yaml
  roles:
    - role: server-bootstrap
```
##### Directly on localhost
`ansible-playbook test.yml`
