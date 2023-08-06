# Ansible Role: Podman Installation and Configuration

An Ansible role that installs Podman and performs the following tasks on the target host:

- Installs Podman package.
- Copies the `todoapp` directory to the remote host.
- Builds a Podman image named `todoapp` from the provided source directory.

## Requirements

- Ansible installed on the control machine.
- SSH access to the target host.
- Appropriate permissions to install packages and copy files.

## Role Variables

No variables are required for this role.

## Dependencies

No dependencies on other roles.

## Example Playbook

- name: Apply Podman installation and configuration
  hosts: podman-host
  become: yes
  roles:
    - podman

## Usage

1. Clone this repository.
2. Create an Ansible playbook and use the role in the playbook as shown in the example playbook above.
3. Customize the role as needed, such as specifying a different source directory or image.

## License

BSD

## Author Information

This Ansible role was created by:

- Name: Guillermo Ramirez
- GitHub: [@gramirez23](https://github.com/gramirez23)

