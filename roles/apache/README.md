# Ansible Role: Apache Installation and Configuration

This Ansible role installs and configures the Apache web server on both Red Hat and Debian based systems.

## Requirements

- Ansible installed on the control node.
- SSH access to target hosts with appropriate privileges.

## Role Variables

No specific variables are required for this role.

## Dependencies

No external dependencies are required for this role.


## Example Playbook


 - hosts:
   become: yes

   roles:
    - apache

## License

BSD

## Author Information

This Ansible role was created by:

- Name: Guillermo Ramirez
- GitHub: [@gramirez23](https://github.com/gramirez23)
