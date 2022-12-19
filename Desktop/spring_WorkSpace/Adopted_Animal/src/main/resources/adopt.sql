create table adopt_user(
user_id varchar2(20 char) primary key,
user_password varchar2(15 char) NOT NULL,
user_email varchar2(30 char) NOT NULL,
user_name varchar2(5 char) NOT NULL,
user_birthday varchar2(10 char) NOT NULL,
user_phonenum varchar2(13 char) NOT NULL,
user_address_postnum number(5) NOT NULL,
user_address_distance varchar2(30 char) NOT NULL,
user_address_detail varchar2(30 char) NOT NULL,
user_thumbnail varchar2(40 char) NOT NULL,
user_star number(4) NOT NULL
);

insert into adopt_user values('polarbear','1234a','polarbear@xxx.com','Lim','1996-04-16','010-xxxx-xxxx',00001,'경기 성남시 분당구 판교로289번길 20'
,'1동 7층','123344566.img', 1);
insert into adopt_user values('polarbear2','1234b','polarbear2@xxx.com','Kim','1996-04-20','010-xxxx-xxxx',00001,'경기 성남시 분당구 판교로289번길 20'
,'1동 7층','123344566.img', 1);


create table adopt_customer(
customer_id varchar2(20 char),
customer_u_id varchar2(20 char),
customer_istag CHAR(1) NOT NULL,
primary key(customer_id, customer_u_id),
constraint fk_adopt_customer foreign key(customer_u_id) 
references adopt_user(user_id) on delete cascade
);

insert into ADOPT_CUSTOMER values('polarbear2','polarbear','y');
insert into ADOPT_CUSTOMER values('polarbear','polarbear2','y');


create table adopt_animal(
animal_id number(10) primary key,
animal_u_id varchar2(20 char) NOT NULL,
animal_name varchar2(5 char) NOT NULL,
animal_age number(2) NOT NULL,
animal_gender varchar2(2 char) NOT NULL,
animal_thumbnail varchar2(40 char) NOT NULL,
animal_registration varchar2(10 char) NOT NULL,
animal_description varchar2(300 char) NOT NULL,
constraint fk_adopt_animal foreign key(animal_u_id) 
references adopt_user(user_id) on delete cascade
);

create sequence adopt_animal_seq;
drop sequence adopt_animal_seq;
alter sequence adopt_animal_seq increment by 1;
ALTER TABLE adopt_animal MODIFY(animal_gender varchar2(2 char));

delete from adopt_animal;


insert into adopt_animal values(adopt_animal_seq.nextval,'polarbear','댕칠이', 5,'남자', '11111.png', '2021-10-27', '너무 순합니다');
insert into adopt_animal values(adopt_animal_seq.nextval,'polarbear2','댕순이', 3,'여자', '11211.png', '2021-10-29', '너무 착합니다');

insert into adopt_animal values(adopt_animal_seq.nextval,'polarbear','때껄룩', 5,'남자', '11111.png', '2021-10-27', '너무 순합니다');
insert into adopt_animal values(adopt_animal_seq.nextval,'polarbear2','나비', 5,'여자', '11111.png', '2021-10-27', '너무 순합니다');

insert into adopt_animal values(adopt_animal_seq.nextval,'polarbear','가마솥', 25,'남자', '11111.png', '2021-10-27', '너무 순합니다');
insert into adopt_animal values(adopt_animal_seq.nextval,'polarbear2','현무암', 15,'여자', '11111.png', '2021-10-27', '너무 순합니다');

insert into adopt_animal values(adopt_animal_seq.nextval,'polarbear','칠땡', 3,'남자', '11111.png', '2021-10-27', '너무 순합니다');
insert into adopt_animal values(adopt_animal_seq.nextval,'polarbear2','친친', 2,'남자', '11111.png', '2021-10-27', '너무 순합니다');

insert into adopt_animal values(adopt_animal_seq.nextval,'polarbear','어우', 3,'여자', '11111.png', '2021-10-27', '너무 순합니다');
insert into adopt_animal values(adopt_animal_seq.nextval,'polarbear2','우엉', 2,'남자', '11111.png', '2021-10-27', '너무 순합니다');

create table adopt_kind(
kind_kind varchar2(20 char) NOT NULL,
kind_sepcies varchar2(10 char) NOT NULL,
kind_a_id number(10) NOT NULL,
primary key(kind_kind, kind_sepcies),
constraint fk_adopt_kind foreign key(kind_a_id)
references adopt_animal(animal_id) on delete cascade
);

insert into adopt_kind values('골든 리트리버','dogs',21);
insert into adopt_kind values('보더콜리','dogs',22);

insert into adopt_kind values('코리안 숏헤어','cats',23);
insert into adopt_kind values('메인쿤','cats',24);

insert into adopt_kind values('쿠터','turtles',25);
insert into adopt_kind values('커먼 머스크','turtles',26);

insert into adopt_kind values('친칠라','rodents',27);
insert into adopt_kind values('기니피그','rodents',28);

insert into adopt_kind values('붉은 여우','foxes',29);
insert into adopt_kind values('사막여우','foxes',30);

update adopt_kind set kind_sepcies = 'dogs';

create table adopt_comment(
comment_num number(10) NOT NULL,
comment_u_id varchar2(20 char) NOT NULL,
comment_a_id number(10) NOT NULL,
comment_title varchar2(30 char) NOT NULL,
comment_description varchar2(300 char) NOT NULL,
comment_registration varchar2(10 char) NOT NULL,
primary key(comment_num, comment_a_id),
foreign key(comment_u_id)
references adopt_user(user_id) on delete cascade,
foreign key(comment_a_id)
references adopt_animal(animal_id) on delete cascade
);

insert into adopt_comment values(adopt_comment_seq.nextval, 'polarbear2',21,'강아지가 예쁘네요',
'저도 골든리트리버 키워봤었는데 골디는 언제 봐도 국룰 입니다.','2022-10-26');
insert into adopt_comment values(adopt_comment_seq.nextval, 'polarbear',22,'강아지가 귀엽네요',
'보더콜리 정말 좋아하는데 역시 귀엽습니다.','2022-10-26');

create sequence adopt_comment_seq;
drop sequence adopt_comment_seq;
alter sequence adopt_comment_seq increment by 1;


drop table adopt_user;
drop table adopt_customer;
drop table adopt_animal;
drop table adopt_kind;
drop table adopt_comment;

select * from adopt_user;
select * from adopt_customer;
select * from adopt_animal;
select * from adopt_kind;
select * from adopt_comment;