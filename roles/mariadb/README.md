# Ansible Role: Apache Installation and Configuration

This Ansible role installs and configures mariadb on Debian based systems.

## Requirements

- Ansible installed on the control node.
- SSH access to target hosts with appropriate privileges.

## Role Variables



## Dependencies

No external dependencies are required for this role.


## Example Playbook


 - hosts:
   become: yes

   roles:
    - mariadb

## License

BSD

## Author Information

This Ansible role was created by:

- Name: Guillermo Ramirez
- GitHub: [@gramirez23](https://github.com/gramirez23)
