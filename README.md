# tallerjulio2023: Server Configuration and Deployment

This Ansible project consists of two playbooks that automate the configuration and deployment of servers. The project aims to provide initial server setup, deploy a web application using Podman, and configure a MariaDB database server.

## webserver.yml: RedHat Server Configuration and Deployment

### Description

This playbook targets RedHat-based servers and performs the following tasks:

- Applies initial configuration using the `initialconf` role.
- Installs and configures Podman and deploys a containerized web application using the `podman` role.
- Configures and deploys an Apache server with a custom virtual host using the `apache` role.
- Copies a virtual host configuration file.
- Creates a Podman container for the web application.

### Usage

1. Create a hosts inventory file or configure your Ansible inventory with the target RedHat-based servers.
2. Update the `remote_user` in the playbook to the appropriate SSH user.
3. Customize any variables in the roles or playbook to suit your needs.
4. Run the playbook using the command: `ansible-playbook -i hosts playbook-redhat.yml`.

## dbserver.yml: Debian Server MariaDB Configuration

### Description

This playbook targets Debian-based servers and performs the following tasks:

- Applies initial configuration using the `initialconf` role.
- Configures a MariaDB database server and performs a secure installation.
- Updates the root password and removes the anonymous user and test database.

### Usage

1. Create a hosts inventory file or configure your Ansible inventory with the target Debian-based servers.
2. Update the `remote_user` in the playbook to the appropriate SSH user.
3. Create a `dbpassword.yml` file with the `rootpass` variable for MariaDB.
4. Run the playbook using the command: `ansible-playbook -i hosts playbook-debian.yml`.

## Project Structure


