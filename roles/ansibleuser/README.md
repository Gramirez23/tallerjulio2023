# Ansible Role: Ansible User Setup

This Ansible role sets up an "ansible" user with sudo privileges and installs the user's public SSH key for secure access.

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
    - ansibleuser
## License

BSD

## Author Information

This Ansible role was created by:

- Name: Guillermo Ramirez
- GitHub: [@gramirez23](https://github.com/gramirez23)

