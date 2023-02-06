select * from T_MEMBER;

insert into T_MEMBER values('admin','admin','admin',sysdate,'a');

insert into T_COMMUNITY values(1, '제목입니다', '내용입니다', '22/08/25', 'admin',0);
insert into T_COMMUNITY values(2, '제목입니다', '내용입니다', '22/08/26', 'admin',0);
insert into T_COMMUNITY values(t_community_SEQ.nextval,'제목입니다', '내용입니다', '22/08/26', 'admin',0);

SELECT b.article_seq, b.article_title, b.article_content, b.article_date, m.mb_name, b.article_count FROM t_community b, t_member m WHERE b.mb_id = m.mb_id ORDER BY b.article_seq DESC;

select * from t_community;

select * from t_comment;

SELECT b.article_title, b.article_content, b.article_date, m.mb_name FROM t_community b, t_member m where b.mb_id = m.mb_id and b.article_seq=1;

insert into T_COMMENT values(1,1,'댓글입니다1','22/08/25','admin');
insert into T_COMMENT values(2,1,'댓글입니다2','22/08/25','admin');
insert into T_COMMENT values(3,1,'댓글입니다3','22/08/25','admin');
insert into T_COMMENT values(4,1,'댓글입니다4','22/08/25','admin');
insert into T_COMMENT values(5,1,'안녕하세요. 댓글 구현 중입니다. 이게 맞나싶기도하고 점점 괜찮아지는거보니까 맞는거 같긴 합니다. 좋은 하루를 보내고 싶지만 그러지 못할거 같군요. 좋은 하루를 보낼 수 있길 빕니다. 이만 글을 줄이겠습니다.','22/08/26','admin');

select * from T_COMMENT;

SELECT c.cmt_content, c.cmt_date, m.mb_name FROM t_comment c, t_member m WHERE c.mb_id = m.mb_id and c.article_seq=1 order by cmt_seq;

SELECT * FROM (SELECT rownum rn, a.* FROM(SELECT b.article_seq, b.article_title, b.article_content, b.article_date, m.mb_name, b.article_count FROM t_community b, t_member m WHERE b.mb_id = m.mb_id ORDER BY article_seq DESC)a) WHERE rn>0 AND rn <= 20;

select b_category, count(b_seq) count from t_bread group by b_category;

SELECT * FROM (SELECT rownum rn, a.* FROM(SELECT b_seq, b_category, b_name, b_img, b_count FROM t_bread WHERE b_category='케이크' ORDER BY b_seq)a) WHERE rn>0 AND rn <= 5;

SELECT b_category, COUNT(b_category) FROM t_bread GROUP BY b_category;

select b_seq, b_category, b_name from t_bread order by b_seq;

select * from(select b_img, b_name, b_category from t_bread order by b_count) where rownum<=3;

SELECT * FROM(SELECT b.article_seq, b.article_title, m.mb_name FROM t_community b, t_member m WHERE b.mb_id = m.mb_id ORDER BY article_seq DESC) WHERE ROWNUM<=5;

Select * from t_member

insert into t_member values('jy','1234','jy',sysdate,'a');
insert into t_member values('sj','1234','sj',sysdate,'a');
insert into t_member values('yj','1234','yj',sysdate,'a');
insert into t_member values('hw','1234','hw',sysdate,'a');
insert into t_member values('hs','1234','hs',sysdate,'a');
insert into t_member values('test1','1234','test1',sysdate,'n');
insert into t_member values('test2','1234','test2',sysdate,'n');
insert into t_member values('test3','1234','test3',sysdate,'n');
insert into t_member values('test4','1234','test4',sysdate,'n');
insert into t_member values('test5','1234','test5',sysdate,'n');
insert into t_member values('test6','1234','test6',sysdate,'n');
insert into t_member values('test7','1234','test7',sysdate,'n');
insert into t_member values('test8','1234','test8',sysdate,'n');

insert into t_community values(t_community_SEQ.nextval,'안녕하세요 팀장 문지영입니다','반갑습니다',sysdate,'jy',0);
insert into t_community values(t_community_SEQ.nextval,'안녕하세요 팀원 노성진입니다','반갑습니다',sysdate,'sj',0);
insert into t_community values(t_community_SEQ.nextval,'안녕하세요 팀원 윤예지입니다','반갑습니다',sysdate,'yj',0);
insert into t_community values(t_community_SEQ.nextval,'안녕하세요 팀원 이현우입니다','반갑습니다',sysdate,'hw',0);
insert into t_community values(t_community_SEQ.nextval,'안녕하세요 팀원 박현성입니다','반갑습니다',sysdate,'hs',0);
insert into t_community values(t_community_SEQ.nextval,'오늘의 글귀','테스트중',sysdate,'jy',0);
insert into t_community values(t_community_SEQ.nextval,'반갑습니다','1',sysdate,'sj',0);
insert into t_community values(t_community_SEQ.nextval,'오늘은','2',sysdate,'yj',0);
insert into t_community values(t_community_SEQ.nextval,'오늘의 꿀팁','3',sysdate,'hw',0);
insert into t_community values(t_community_SEQ.nextval,'태풍이 몰아치는 어느 날','4',sysdate,'hs',0);

truncate from T_COMMUNITY
