-- TS_056 게시글 조회
-- 모든 회원은 게시판 테이블에서 모든 게시글을 조회한다.
SELECT *
FROM board;


-- TS_057 게시글 상세 조회
-- 모든 회원은 게시판 테이블에 모든 게시글 중 특정 게시글을 선택해 조회한다.
SELECT *
FROM board
WHERE board_title = '현관*' OR board_content = '첫인상*' OR user_id = 6;


-- TS_058 게시글 작성
-- 사용자 또는 사업자가 게시판 테이블에 제목, 내용을 작성한다.
INSERT INTO board (board_title, board_content, user_id)
VALUES('모던한 인테리어 스타일 추천', '모던한 디자인을 좋아하는 분들을 위한 인테리어 팁을 소개합니다.',11) ;


-- TS_059 게시글 수정
-- 사용자 또는 사업자가 게시판 테이블에 제목, 내용을 수정한다.
UPDATE board
SET board_title = '작은 공간을 위한 인테리어 아이디어', board_content = '작은 집이나 아파트에서 공간을 효율적으로 활용할 수 있는 팁을 공유합니다...' 
WHERE board_id = 1;


-- TS_060 게시글 삭제
-- 사용자 또는 사업자가 게시판 테이블에 게시글을 삭제한다.
DELETE FROM board WHERE board_id = 1;


-- TS_061 게시글 좋아요
-- 사용자가 게시글에 좋아요를 한다. 
INSERT INTO board_like ( board_id, user_id, board_like_is_delete)
SELECT b.board_id, 5, 'N' 
FROM board b
WHERE b.board_id = 7;


-- TS_062 게시글 좋아요 취소
-- 사용자가 게시글에 좋아요를 취소한다.
UPDATE board_like
SET board_like_is_delete = 'Y'
WHERE board_id = 7 AND user_id = 5;


-- TS_063 게시글 좋아요 개수
-- 게시판에 좋아요 합계를 구한다.
SELECT COUNT(*) AS 좋아요
FROM board_like  
WHERE board_like_is_delete = 'N' and board_id=5;


-- TS_064 공지사항 조회
-- 모든 회원은 작성된 게시판 테이블 내 작성된 공지사항을 제목, 내용으로 조회한다.
SELECT *
FROM board
where user_id=9999;