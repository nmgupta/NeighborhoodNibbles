drop schema if exists `nndb`;
create schema `nndb`;
use `nndb`;

drop table if exists `posting`;

create table `posting` (
    `pid` int(11) not null auto_increment,
    `timePosted` timestamp not null,
    `endTime` time not null,
    `available` boolean not null default 1,
    `organization` varchar(100) not null,
    `street` varchar(100) not null,
    `city` varchar(100) not null,
    `state` varchar(100) not null,
    `zipcode` int not null,
    `foodType` varchar(50) not null,
    `foodName` varchar(100) not null,
    `servings` int not null,
    `interested` int not null default 0,
    primary key(`pid`)
);

insert into `posting`(`endTime`,`organization`,`street`,`city`,`state`,`zipcode`,`foodType`,`foodName`,`servings`,`interested`)
values
	('22:00:00','Subway','123 Main St','Irvine','California','92617','Deli','Bread','500',4),
    ('23:30:00','WomenWhoCode','808 J Street','San Diego','California','92101','Mediterranean','Hummus','350',10)
    ('21:45:00','Lotus Thai Cuisine', '906 Market St','San Diego','California','92101','Thai', 'Pad Thai','145',2);