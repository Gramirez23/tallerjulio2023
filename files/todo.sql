USE todo;
CREATE TABLE `users` (
 `id` int(3) NOT NULL AUTO_INCREMENT,
 `first_name` varchar(20) DEFAULT NULL,
 `last_name` varchar(20) DEFAULT NULL,
 `username` varchar(250) DEFAULT NULL,
 `password` varchar(20) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE `todos` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT,
 `description` varchar(255) DEFAULT NULL,
 `is_done` bit(1) NOT NULL,
 `target_date` datetime(6) DEFAULT NULL,
 `username` varchar(255) DEFAULT NULL,
 `title` varchar(255) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE USER 'todo'@'%' IDENTIFIED BY 'prueba2022';
GRANT ALL PRIVILEGES ON todo.* TO 'todo'@'%';
FLUSH PRIVILEGES;
