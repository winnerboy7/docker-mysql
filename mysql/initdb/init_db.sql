DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visited` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

insert into users (id, firstName, lastName, gender, visited) values (1, 'Chaimongkol', 'KK', 'Female', 0);
insert into users (id, firstName, lastName, gender, visited) values (2, 'Torie', 'Blick', 'Female', 0);
insert into users (id, firstName, lastName, gender, visited) values (3, 'Waverley', 'Treagust', 'Male', 0);
insert into users (id, firstName, lastName, gender, visited) values (4, 'Kippy', 'Evershed', 'Male', 0);
insert into users (id, firstName, lastName, gender, visited) values (5, 'Vevay', 'Tolson', 'Female', 0);