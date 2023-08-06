# Ansible Role: Server Updates and Configuration

An Ansible role that performs the following tasks on target servers:

- Installs a public key in the `sysadmin` user's authorized keys.
- Updates all available packages on RedHat servers using YUM.
- Updates all available packages on Debian servers using APT.
- Enables the firewall and allows SSH connections on Ubuntu servers using UFW.

## Requirements

- Ansible installed on the control machine.
- SSH access to the target servers.
- Appropriate permissions to update packages and configure the firewall.

## Role Variables

No variables are required for this role.

## Dependencies

No dependencies on other roles.

## Example Playbook

- name: Apply server updates and configuration
  hosts: servers
  become: yes
  roles:
    - initialconf 

## License

BSD

## Author Information

This Ansible role was created by:

- Name: Guillermo Ramirez
- GitHub: [@gramirez23](https://github.com/gramirez23)

