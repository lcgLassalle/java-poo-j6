SET SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO';
SET time_zone = '+00:00';

USE bxvbh8lxgvbwaththvis;

-- Creatuion des tables de données utilisées pour le TP recensement
create table if not exists VILLE (
  ID int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  NOM varchar(100) DEFAULT NULL,
  ID_DEP int(11) DEFAULT NULL,
  ID_REG int(11) DEFAULT NULL,
  POP_MUNICIPALE int(11) default null;
  POP_A_PART int(11) default null;
  POP_TOT int(11) default null;
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table if not exists DEPARTEMENT (
ID int(11) NOT NULL PRIMARY KEY auto_increment,
NOM varchar(100) default null,
ID_REG int(11) default null
)engine=InnoDB default charset=utf8;

create table if not exists REGION (
ID int(11) not null primary key auto_increment,
NOM varchar(100) default null
)engine=InnoDB default charset=utf8;

-- creer des lien entre les tables avec des foreign key
-- lien entre VILLE et DEPARTEMENT/REGION
alter table VILLE add constraint FK_ID_DEP foreign key (ID_DEP) references DEPARTEMENT (ID);
alter table VILLE add constraint FK_ID_REG foreign key (ID_REG) references REGION (ID);
-- lien entre DEPARTEMET et REGION
alter table DEPARTEMENT add constraint FK_ID_REG1 foreign key (ID_REG) references REGION (ID);

