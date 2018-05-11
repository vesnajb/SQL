CREATE SCHEMA `akad` ;

CREATE TABLE if not exists `studenti` (
	`id` 		int(11) NOT NULL UNIQUE AUTO_INCREMENT,
    `ime` 		varchar(40) NOT NULL,
    `prezime` 	varchar(50) NOT NULL,
    PRIMARY KEY (`id`)
)	ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5;

INSERT INTO `studenti` (`id`, `ime`, `prezime`) VALUES
(1, 'Stavre', 'Stavrovski');

INSERT INTO `studenti` (`ime`, `prezime`) VALUES
('Stavre', 'Stavrovski'),
('Risto', 'Bombata'),
('Mia', 'Koluci');

alter table `studenti` AUTO_INCREMENT = 5;

select distinct ime, count(ime)
from studenti
group by ime
order by count(ime) desc;
