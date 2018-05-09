/* 영화정보 */
DROP TABLE movie_info 
	CASCADE CONSTRAINTS;

/* 상영정보 */
DROP TABLE screen_info 
	CASCADE CONSTRAINTS;

/* 회원 */
DROP TABLE member 
	CASCADE CONSTRAINTS;

/* 이벤트페이지 */
DROP TABLE event 
	CASCADE CONSTRAINTS;

/* 예매 */
DROP TABLE reservation 
	CASCADE CONSTRAINTS;

/* 게시판 */
DROP TABLE board 
	CASCADE CONSTRAINTS;

/* 영화관 */
DROP TABLE theater 
	CASCADE CONSTRAINTS;

/* 영화정보 */
CREATE TABLE movie_info (
	movie_num VARCHAR2(20) NOT NULL, /* 영화번호 */
	movie_title VARCHAR2(200) NOT NULL, /* 영화제목 */
	movie_etitle VARCHAR2(200) NOT NULL, /* 영화영어제목 */
	movie_dir VARCHAR2(200) NOT NULL, /* 감독 */
	movie_act VARCHAR2(200) NOT NULL, /* 배우 */
	movie_date DATE NOT NULL, /* 개봉일 */
	movie_rat NUMBER NOT NULL, /* 평점 */
	movie_path VARCHAR2(100), /* 영화이미지경로 */
	movie_youtube VARCHAR2(100), /* 영화유튜브경로 */
	movie_state NUMBER NOT NULL /* 영화상태 */
);

ALTER TABLE movie_info
	ADD
		CONSTRAINT PK_movie_info
		PRIMARY KEY (
			movie_num
		);

/* 상영정보 */
CREATE TABLE screen_info (
	screen_num VARCHAR2(20) NOT NULL, /* 상영번호 */
	movie_num VARCHAR2(20) NOT NULL, /* 영화번호 */
	theater_name VARCHAR2(20) NOT NULL, /* 상영관이름 */
	screen_date DATE NOT NULL, /* 영화상영날짜 */
	screen_time NUMBER, /* 상영시간 */
	rev_total NUMBER NOT NULL /* 총예매수 */
);

ALTER TABLE screen_info
	ADD
		CONSTRAINT PK_screen_info
		PRIMARY KEY (
			screen_num,
			movie_num,
			theater_name
		);

/* 회원 */
CREATE TABLE member (
	member_id VARCHAR2(100) NOT NULL, /* 회원아이디 */
	member_password VARCHAR2(20) NOT NULL, /* 비밀번호 */
	member_email VARCHAR2(50) NOT NULL, /* 메일주소 */
	member_phone VARCHAR2(50) NOT NULL, /* 핸드폰번호 */
	member_date DATE NOT NULL /* 가입날짜 */
);

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (
			member_id
		);

/* 이벤트페이지 */
CREATE TABLE event (
	event_num NUMBER NOT NULL, /* 이벤트 글 번호 */
	event_title VARCHAR2(200) NOT NULL, /* 제목 */
	event_conts VARCHAR2(500) NOT NULL, /* 내용 */
	event_date DATE NOT NULL, /* 게시일 */
	event_path VARCHAR2(100) NOT NULL /* 이벤트이미지경로 */
);

ALTER TABLE event
	ADD
		CONSTRAINT PK_event
		PRIMARY KEY (
			event_num
		);

/* 예매 */
CREATE TABLE reservation (
	rev_num VARCHAR2(20) NOT NULL, /* 예매번호 */
	member_id VARCHAR2(100) NOT NULL, /* 회원아이디 */
	movie_num VARCHAR2(20) NOT NULL, /* 영화번호 */
	theater_name VARCHAR2(20) NOT NULL, /* 상영관이름 */
	screen_num VARCHAR2(20) NOT NULL, /* 상영번호 */
	rev_pep NUMBER NOT NULL /* 예매수 */
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

/* 게시판 */
CREATE TABLE board (
	borad_num NUMBER NOT NULL, /* 글번호 */
	member_id VARCHAR2(100), /* 회원아이디 */
	board_title VARCHAR2(200) NOT NULL, /* 글제목 */
	borad_conts VARCHAR2(1000) NOT NULL, /* 글내용 */
	reply VARCHAR2(1000), /* 댓글 */
	board_date DATE NOT NULL, /* 등록일자 */
	board_password VARCHAR2(20) NOT NULL /* 비밀번호 */
);

ALTER TABLE board
	ADD
		CONSTRAINT PK_board
		PRIMARY KEY (
			borad_num
		);

/* 영화관 */
CREATE TABLE theater (
	theater_name VARCHAR2(20) NOT NULL, /* 상영관이름 */
	theater_total NUMBER NOT NULL /* 좌석수 */
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

insert into movie_info values('movie-100', '어벤져스:인피니티 워', 'Avengers: Infinity War', '안소니 루소조 루소', '로버트 다우니 주니어|톰 홀랜드|크리스 헴스워스','2018-04-25',9.02,'http://imgmovie.naver.com/mdi/mit110/1363/136315_P16_142450.jpg','xUDhdCsLkjU',0);
insert into movie_info values('movie-200', '챔피언', 'Champion', '김용완', '마동석|권율|한예리|','2018-05-01',0.00,'http://imgmovie.naver.com/mdi/mit110/1693/169347_P41_140014.jpg','null',0);
insert into movie_info values('movie-300', '얼리맨', 'Early Man', '닉 파크|', '에디 레드메인|톰 히들스턴|메이지 윌리암스|','2018-05-03',8.85,'http://imgmovie.naver.com/mdi/mit110/1542/154251_P17_113702.jpg','null',1);




--------------theater----------------
insert into theater values('A관', 500);
insert into theater values('B관', 500);
insert into theater values('C관', 500);



--------------screen_info----------------
insert into screen_info values('screen-100', 'movie-100', 'A관', '2018-05-01', 07, 30);
insert into screen_info values('screen-200', 'movie-200', 'B관', '2018-05-02', 21, 50);
insert into screen_info values('screen-300', 'movie-300', 'C관', '2018-05-03', 15, 100);



--------------member----------------
insert into member values('hee', 'a1234', 'hee@naver.com', '010-1234-5678', '2017-06-11');
insert into member values('yong', 'b1234', 'yong@naver.com', '010-2578-5471', '2015-06-11');
insert into member values('don', 'c1234', 'don@naver.com', '010-5678-5678', '2016-06-11');



--------------reservation----------------
insert into reservation values('rev-100', 'hee', 'movie-100', 'A관', 'screen-100', 2);
insert into reservation values('rev-200', 'yong', 'movie-200', 'B관', 'screen-200', 2);
insert into reservation values('rev-300', 'don', 'movie-300', 'C관', 'screen-300', 4);




--------------board----------------
insert into board values('1', 'hee', '질문있습니다.', '게시판내용에 몇글자 들어갈까?', '댓글로 몇글자 들어가는지 알려줄게요', '2018-04-28', 'aa1234');
insert into board values('2', 'yong', '운영자바보', '운영을 하기는하냐?', '응 ip차단', '2018-05-01', 'bb1234');
insert into board values('3', 'don', '사이트 참 못만드셧네요', '발로 만들어도 이것보단 잘 만들겠네요', '발로 만들어보세요', '2018-05-02', 'cc1234');




--------------event----------------
insert into event values(1, '이벤트 제목이 키값이 되나?', '그러니깐 insert되는거 아닐까?', '2018-05-04','경로를 지정');
insert into event values(2, '이벤트는 플젝 끝나고 회식', '플젝끝나고 즐겁게', '2018-05-03','경로를 지정');
insert into event values(3, '이벤트 주말에 봅니까?', '그런데 저기 날짜는 무슨 날짜야? 등록날짜?', '2018-03-15','경로를 지정');


------------------------------------------------------------------------------------------------------------------------------
select * from movie_info;
select * from THEATER;
select * from SCREEN_INFO;
select * from RESERVATION;
select * from MEMBER;
select * from BOARD;
select * from EVENT;

