/* ��ȭ���� */
DROP TABLE movie_info 
	CASCADE CONSTRAINTS;

/* ������ */
DROP TABLE screen_info 
	CASCADE CONSTRAINTS;

/* ȸ�� */
DROP TABLE member 
	CASCADE CONSTRAINTS;

/* �̺�Ʈ������ */
DROP TABLE event 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE reservation 
	CASCADE CONSTRAINTS;

/* �Խ��� */
DROP TABLE board 
	CASCADE CONSTRAINTS;

/* ��ȭ�� */
DROP TABLE theater 
	CASCADE CONSTRAINTS;

-------------------------------------------------------
drop sequence movie_seq;
drop sequence screen_seq;
drop sequence theater_seq;
drop sequence reservation_seq;
drop sequence member_seq;
drop sequence board_seq;
drop sequence event_seq;


create sequence movie_seq;
create sequence screen_seq;
create sequence theater_seq;
create sequence reservation_seq;
create sequence member_seq;
create sequence board_seq;
create sequence event_seq;


-----------------------------------------------------------
/* ��ȭ���� */
CREATE TABLE movie_info (
	movie_num VARCHAR2(20) NOT NULL, /* ��ȭ��ȣ */
	movie_title VARCHAR2(200) NOT NULL, /* ��ȭ���� */
	movie_etitle VARCHAR2(200) NOT NULL, /* ��ȭ�������� */
	movie_date DATE NOT NULL, /* ������ */
	movie_country VARCHAR2(100) NOT NULL, /* ���� ���� */
	movie_dir VARCHAR2(200) NOT NULL, /* ���� */
	movie_state VARCHAR2(20) NOT NULL, /* ���ۻ��� */
	movie_path VARCHAR2(100), /* ��ȭ�̹������ */
	movie_youtube VARCHAR2(100) /* ��ȭ��Ʃ���� */
	
);

ALTER TABLE movie_info
	ADD
		CONSTRAINT PK_movie_info
		PRIMARY KEY (
			movie_num
		);

/* ������ */
CREATE TABLE screen_info (
	screen_num VARCHAR2(20) NOT NULL, /* �󿵹�ȣ */
	movie_num VARCHAR2(20) NOT NULL, /* ��ȭ��ȣ */
	theater_name VARCHAR2(20) NOT NULL, /* �󿵰��̸� */
	screen_date DATE NOT NULL, /* ��ȭ�󿵳�¥ */
	screen_time NUMBER /* �󿵽ð� */
);

ALTER TABLE screen_info
	ADD
		CONSTRAINT PK_screen_info
		PRIMARY KEY (
			screen_num,
			movie_num,
			theater_name
		);

/* ȸ�� */
CREATE TABLE member (
	member_id VARCHAR2(100) NOT NULL, /* ȸ�����̵� */
	member_password VARCHAR2(20) NOT NULL, /* ��й�ȣ */
	member_email VARCHAR2(50) NOT NULL, /* �����ּ� */
	member_phone VARCHAR2(50) NOT NULL, /* �ڵ�����ȣ */
	member_date DATE NOT NULL /* ���Գ�¥ */
);

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (
			member_id
		);

/* �̺�Ʈ������ */
CREATE TABLE event (
	event_num NUMBER NOT NULL, /* �̺�Ʈ �� ��ȣ */
	event_title VARCHAR2(200) NOT NULL, /* ���� */
	event_conts VARCHAR2(500) NOT NULL, /* ���� */
	event_date DATE NOT NULL, /* �Խ��� */
	event_path VARCHAR2(100) NOT NULL /* �̺�Ʈ�̹������ */
);

ALTER TABLE event
	ADD
		CONSTRAINT PK_event
		PRIMARY KEY (
			event_num
		);

/* ���� */
CREATE TABLE reservation (
	rev_num VARCHAR2(20) NOT NULL, /* ���Ź�ȣ */
	member_id VARCHAR2(100) NOT NULL, /* ȸ�����̵� */
	movie_num VARCHAR2(20) NOT NULL, /* ��ȭ��ȣ */
	theater_name VARCHAR2(20) NOT NULL, /* �󿵰��̸� */
	screen_num VARCHAR2(20) NOT NULL, /* �󿵹�ȣ */
	rev_pep NUMBER NOT NULL /* ���ż� */
);

ALTER TABLE reservation
	ADD
		CONSTRAINT PK_reservation
		PRIMARY KEY (
			rev_num,
			member_id,
			movie_num,
			theater_name,
			screen_num
		);

/* �Խ��� */
CREATE TABLE board (
	borad_num NUMBER NOT NULL, /* �۹�ȣ */
	member_id VARCHAR2(100), /* ȸ�����̵� */
	board_title VARCHAR2(200) NOT NULL, /* ������ */
	borad_conts VARCHAR2(1000) NOT NULL, /* �۳��� */
	reply VARCHAR2(1000), /* ��� */
	board_date DATE NOT NULL, /* ������� */
	board_password VARCHAR2(20) NOT NULL /* ��й�ȣ */
);

ALTER TABLE board
	ADD
		CONSTRAINT PK_board
		PRIMARY KEY (
			borad_num
		);

/* ��ȭ�� */
CREATE TABLE theater (
	theater_name VARCHAR2(20) NOT NULL, /* �󿵰��̸� */
	theater_total NUMBER NOT NULL /* �¼��� */
);

ALTER TABLE theater
	ADD
		CONSTRAINT PK_theater
		PRIMARY KEY (
			theater_name
		);

ALTER TABLE screen_info
	ADD
		CONSTRAINT FK_movie_info_TO_screen_info
		FOREIGN KEY (
			movie_num
		)
		REFERENCES movie_info (
			movie_num
		)
		ON DELETE CASCADE;

ALTER TABLE screen_info
	ADD
		CONSTRAINT FK_theater_TO_screen_info
		FOREIGN KEY (
			theater_name
		)
		REFERENCES theater (
			theater_name
		)
		ON DELETE CASCADE;

ALTER TABLE reservation
	ADD
		CONSTRAINT FK_member_TO_reservation
		FOREIGN KEY (
			member_id
		)
		REFERENCES member (
			member_id
		)
		ON DELETE CASCADE;

ALTER TABLE reservation
	ADD
		CONSTRAINT FK_movie_info_TO_reservation
		FOREIGN KEY (
			movie_num
		)
		REFERENCES movie_info (
			movie_num
		)
		ON DELETE CASCADE;

ALTER TABLE reservation
	ADD
		CONSTRAINT FK_screen_info_TO_reservation
		FOREIGN KEY (
			screen_num,
			movie_num,
			theater_name
		)
		REFERENCES screen_info (
			screen_num,
			movie_num,
			theater_name
		)
		ON DELETE CASCADE;

ALTER TABLE board
	ADD
		CONSTRAINT FK_member_TO_board
		FOREIGN KEY (
			member_id
		)
		REFERENCES member (
			member_id
		)
		ON DELETE CASCADE;
		
		
--------------------------------------------------------------------------------
	
	--------movie_info-----------

insert into movie_info values('movie-100', '�����:���Ǵ�Ƽ ��', 'Avengers: Infinity War', '2018-04-25', '�̱�', '�ȼҴ� ����� ���', '��������', 'http://imgmovie.naver.com/mdi/mit110/1363/136315_P16_142450.jpg','xUDhdCsLkjU');
insert into movie_info values('movie-200', 'è�Ǿ�', 'Champion', '2018-05-01', '�ѱ�', '����', '��������', 'http://imgmovie.naver.com/mdi/mit110/1693/169347_P41_140014.jpg','null');
insert into movie_info values('movie-300', '�󸮸�', 'Early Man', '2018-05-03', '�̱�', '�� ��ũ', '��������', 'http://imgmovie.naver.com/mdi/mit110/1542/154251_P17_113702.jpg','null');




--------------theater----------------
insert into theater values('A��', 500);
insert into theater values('B��', 500);
insert into theater values('C��', 500);



--------------screen_info----------------
insert into screen_info values('screen-100', 'movie-100', 'A��', '2018-05-01', 07);
insert into screen_info values('screen-200', 'movie-200', 'B��', '2018-05-02', 21);
insert into screen_info values('screen-300', 'movie-300', 'C��', '2018-05-03', 15);



--------------member----------------
insert into member values('admin', 'admin', 'hee@naver.com', '010-1234-5678', '2017-06-11');
insert into member values('hee', 'a1234', 'hee@naver.com', '010-1234-5678', '2017-06-11');
insert into member values('yong', 'b1234', 'yong@naver.com', '010-2578-5471', '2015-06-11');
insert into member values('don', 'c1234', 'don@naver.com', '010-5678-5678', '2016-06-11');



--------------reservation----------------
insert into reservation values('rev-100', 'hee', 'movie-100', 'A��', 'screen-100', 2);
insert into reservation values('rev-200', 'yong', 'movie-200', 'B��', 'screen-200', 2);
insert into reservation values('rev-300', 'don', 'movie-300', 'C��', 'screen-300', 4);




--------------board----------------
insert into board values('1', 'hee', '�����ֽ��ϴ�.', '�Խ��ǳ��뿡 ����� ����?', '��۷� ����� ������ �˷��ٰԿ�', '2018-04-28', 'aa1234');
insert into board values('2', 'yong', '��ڹٺ�', '��� �ϱ���ϳ�?', '�� ip����', '2018-05-01', 'bb1234');
insert into board values('3', 'don', '����Ʈ �� ������˳׿�', '�߷� ���� �̰ͺ��� �� ����ڳ׿�', '�߷� ��������', '2018-05-02', 'cc1234');




--------------event----------------
insert into event values(1, '�̺�Ʈ ������ Ű���� �ǳ�?', '�׷��ϱ� insert�Ǵ°� �ƴұ�?', '2018-05-04','��θ� ����');
insert into event values(2, '�̺�Ʈ�� ���� ������ ȸ��', '���������� ��̰�', '2018-05-03','��θ� ����');
insert into event values(3, '�̺�Ʈ �ָ��� ���ϱ�?', '�׷��� ���� ��¥�� ���� ��¥��? ��ϳ�¥?', '2018-03-15','��θ� ����');

------------------------------------------------------------------------------------------------------------------------------
select * from movie_info;
select * from THEATER;
select * from SCREEN_INFO;
select * from RESERVATION;
select * from MEMBER;
select * from BOARD;
select * from EVENT;

<<<<<<< HEAD
=======
delete from reservation where rev_pep=5

