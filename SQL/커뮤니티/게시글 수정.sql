-- TS_059 게시글 수정
-- 사용자 또는 사업자가 게시판 테이블에 제목, 내용을 수정한다.
UPDATE board
SET board_title = '작은 공간을 위한 인테리어 아이디어', board_content = '작은 집이나 아파트에서 공간을 효율적으로 활용할 수 있는 팁을 공유합니다...' 
WHERE board_id = 1;