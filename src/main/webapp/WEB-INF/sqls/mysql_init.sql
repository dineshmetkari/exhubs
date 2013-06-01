use exhubs;

-- 0. initiation --
drop table users; 
drop table group_role;
drop table roles; 
drop table groups;

-------------------------------------

-- 1. groups --
create table groups (
	id int not null auto_increment,
	name varchar(32) not null,
	description varchar(32),
	primary key (id)
);

insert into groups (name, description) values ('GROUP_SYSTEM_ADMIN', 'System Admin Group');
insert into groups (name, description) values ('GROUP_NORMAL_USER', 'Normal User Group');


-- 2. roles --
create table roles (
	id int not null auto_increment, 
	name varchar(32) not null,
	description varchar(32),
	primary key (id)
);

insert into roles (name, description) values ('ROLE_USER', 'Registered User');
insert into roles (name, description) values ('ROLE_USER_MANAGER', 'User Manager');
insert into roles (name, description) values ('ROLE_UNIT_MANAGER', 'Unit Manager');
insert into roles (name, description) values ('ROLE_EXAMINER', 'Examiner');
insert into roles (name, description) values ('ROLE_TEST_TAKER', 'Test Taker');
insert into roles (name, description) values ('ROLE_TEST_REVIEWER', 'Test Reviewer');


-- 3. group_role --
create table group_role (
	group_id int not null,
	role_id int not null,
	primary key (group_id, role_id),
	foreign key (group_id) references groups (id),
	foreign key (role_id) references roles (id)
);

insert into group_role (group_id, role_id) values (1, 1);
insert into group_role (group_id, role_id) values (1, 2);
insert into group_role (group_id, role_id) values (1, 3);
insert into group_role (group_id, role_id) values (1, 4);
insert into group_role (group_id, role_id) values (1, 5);
insert into group_role (group_id, role_id) values (1, 6);
insert into group_role (group_id, role_id) values (2, 1);

-- 4. users --
create table users (
    id int not null auto_increment,
    userid varchar(32) not null,
    password varchar(32) not null,
    name varchar(32),
    email varchar(32) not null,
    group_id int not null,
    primary key (id),
    foreign key (group_id) references groups (id)
);

insert into users (userid, password, name, email, group_id) values ('admin', 'admin123', 'Super Admin', 'biminglei@gmail.com', 1);
insert into users (userid, password, name, email, group_id) values ('test', 'test123', 'Tester', 'jokeservice@gmail.com', 2);



