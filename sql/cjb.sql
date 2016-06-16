-- 成绩表
create table cjb
(
	xh		char(6)		not null,
	kch		char(3)		not null,
	cj		number(2)	null,
	FOREIGN KEY (xh) REFERENCES xsb(xh)
	on delete cascade,
	FOREIGN KEY (kch) REFERENCES kcb(kch)
	on delete cascade
);