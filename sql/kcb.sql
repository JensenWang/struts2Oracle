-- 课程表
create table kcb
(
	kch		char(3)		not null	primary key,
	kcm		char(16)	not null,
	kkxq	number(1)	default 1	check (kkxq>=1 and kkxq<=8),
	xs		number(2)	default 0,
	cf		number(1)	default 0	not null
);