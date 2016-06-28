-- 创建存储过程
create or replace procedure CJ_Data
	(in_xh IN char,in_kch IN char, in_cj IN number)
AS
	in_count number;
	in_xf number:=0;
	in_cjb_cj number:=0;
BEGIN
	SELECT XF INTO in_xf FROM KCB WHERE KCH=in_kch;
	SELECT COUNT(*) INTO in_count FROM CJB WHERE XH=in_xh AND KCH=in_kch;
	IF in_count>0 THEN
		SELECT CJ INTO in_cjb_cj FROM CJB WHERE XH=in_xh AND KCH=in_kch;
		DELETE FROM CJB WHERE XH=in_xh AND KCH=in_kch;
		IF in_cjb_cj>=60 THEN
			UPDATE XSB SET ZXF=ZXF-in_xf WHERE XH=in_xh;
		END IF;
	END IF;
	IF in_cj<>-1 THEN
		INSERT INTO CJB VALUES(in_xh, in_kch, in_cj);
		IF in_cj>=60 THEN
			UPDATE XSB SET ZXF=ZXF+in_xf WHERE XH=in_xh;
		END IF;
	END IF;
	COMMIT;
END;
			