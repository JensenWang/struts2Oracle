-- ѧ����Ƭ
create table xszp
(
	xh	char(6)	not null,
	zp	blob	null,
	foreign key (xh) references xsb(xh)
	on delete cascade
)