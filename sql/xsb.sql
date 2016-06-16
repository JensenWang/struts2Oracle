-- 学生表
create table xsb
(
	xh	char(6)	not null	primary key,
	xm	char(8)	not null,
	xb	char(2)	default '1'	not null,
	cssj	date	not null,
	zy	char(12)	null,
	zxf	number(2)	default 0	check (zxf>=0 and zxf<160),
	bz	varchar2(200)	null
);