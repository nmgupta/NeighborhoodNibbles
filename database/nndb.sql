drop schema if exists `nndb`;
create schema `nndb`;
use `nndb`;

drop table if exists `posting`;

create table `posting` (
    pid int(11) not null,
    fid int(11) not null,
    timePosted timestamp not null,
    endTime time not null,
    available boolean not null default 1,
    organization varchar(100) not null,
    address varchar(100) not null,
    foodType varchar(50) not null,
    foodName varchar(100) not null,
    servings int not null,
    interested int not null default 0,
    primary key(`pid`)
);