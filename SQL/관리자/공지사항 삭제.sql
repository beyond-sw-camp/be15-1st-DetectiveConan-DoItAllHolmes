-- TS_086 공지사항 삭제
-- 작성한 공지사항을 삭제한다.
delete from board
where board_id = 12 and user_id = (select user_id from user where role = '관리자');