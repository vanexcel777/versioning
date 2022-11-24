

CREATE TABLE `user` (
  `id_user` int(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` enum('administrateur','superviseur','agent') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

  CREATE TABLE `reservation` (
  `id_reservation` int(100) NOT NULL,
  `client_firstname` varchar(128) NOT NULL,
  `client_lastname` varchar(128) NOT NULL,
  `client_tel` varchar(128) NOT NULL,
  `agent_name` varchar(128) NOT NULL,
  `num_reservation` varchar(128) NOT NULL,
  `code_hotel` varchar(128) NOT NULL,
  `type_reservation` enum ('Avec','Sans') NOT NULL,
  `problem_rencontrer` varchar(256) NOT NULL ,
  `type_appel` varchar(128) NOT NULL,
  `gerant_contacter` varchar(128) NOT NULL,
  `message_client` varchar(128) NOT NULL ,
  `dt_reservation`  timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



INSERT INTO `user`(`id_user`, `firstname`, `lastname`, `username`, `password`, `usertype`) 
VALUES (1, 'ialy','raza', 'ialy501', '$2y$10$vVPHphp1hdwdy/m21uOEiuSIkuzYieb8ucpEauvWVIpd13RqP7vKW' , 'administrateur' );

ALTER TABLE `user`
  ADD CONSTRAINT PK_user PRIMARY KEY (`id_user`);

ALTER TABLE `reservation`
  ADD CONSTRAINT PK_reservation PRIMARY KEY (`id_reservation`);


ALTER TABLE `user`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `reservation`
  MODIFY `id_reservation` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;


