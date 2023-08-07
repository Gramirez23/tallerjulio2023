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
4. If you want to run only this playbook use the command: `ansible-playbook webserver.yml --ask-become-pass`.

## dbserver.yml: Debian Server MariaDB Configuration

### Description

This playbook targets Debian-based servers and performs the following tasks:

- Applies initial configuration using the `initialconf` role.
- Configures a MariaDB database server and performs a secure installation using the `mariadb` role.
- Creation of user todo in mariadb: This task uses the `mysql_user` Ansible module to create a MySQL user named todo
  with the specified password (todopass) and grant all privileges to the user on the specified hosts.
- Creation of db in mariadb: This task uses the `mysql_db` Ansible module to create a MySQL database named todo.
- Copy database dump file: This task uses the copy Ansible module to copy the todo.sql database dump file to the target host at /opt/todo.sql.
- Restore database: This task uses the `mysql_db` Ansible module to restore the todo database from the dump file located at /opt/todo.sql.

### Usage

1. Create a hosts inventory file or configure your Ansible inventory with the target Debian-based servers.
2. Update the `remote_user` in the playbook to the appropriate SSH user.
3. Create a `dbpassword.yml` file with the `rootpass` variable for MariaDB using ansible-vault.
4. Create a `dbpassword2.yml` file with the `todopass` variable for MariaDB using ansible-vault.
4. If you want to run only this playbook use the command: `ansible-playbook dbserver.yml --ask-become-pass --ask-vault-pass`.

## Author Information

This Ansible role was created by:

- Name: Guillermo Ramirez
- GitHub: [@gramirez23](https://github.com/gramirez23)
- Name: Gabriel Mendez
