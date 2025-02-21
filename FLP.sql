create database bd_escola;

use bd_escola;

CREATE TABLE tb_aluno (
 cd_aluno INT AUTO_INCREMENT PRIMARY KEY,
 nm_aluno VARCHAR(100),
 cpf VARCHAR(11)
);

create	user 'FLP'@'localhost' identified by 'fds';
grant all privileges on *.* to 'FLP'@'localhost';

create user 'Graciete'@'localhost' identified by 'professora';
grant select, insert on tb_aluno.* to 'Graciete'@'localhost';

create user 'JoseCarlos'@'localhost' identified by '1234';
grant select, insert, update on tb_aluno.* to 'JoseCarlos'@'localhost';

flush privileges;