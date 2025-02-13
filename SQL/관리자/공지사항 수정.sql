-- TS_085 공지사항 수정
-- 작성한 공지사항을 수정한다.
UPDATE board 
SET board_title = '[공지] 변경된 서버 점검 안내', board_content = '점검 시간이 2025년 3월 1일 02:00~08:00로 변경되었습니다.'
WHERE user_id = 999;
