# ansible-role-server-bootstrap
Ansible role for Ubuntu server bootstrap

## Prerequisites
- [Ansible][ans] >=2.9 installed globally
- [git][git] installed globally

- After Ansible will be installed you have to create a role 'server-bootstrap'.
  An easiest way is to do it is to create in the project's root a directory called 'roles/'
  and put a file 'roles.yaml' with following content:
  ```yaml
  ---
  roles:
    - role: server-bootstrap
  ```

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
or
`sudo ansible-playbook test.yml`

[ans]: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu
[git]: https://git-scm.com/download/linux
