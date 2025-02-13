-- TS_094 업체 이용후기 댓글 작성
-- 이용후기 댓글 테이블의 내용을 작성한다.
INSERT INTO review_comments (review_comments_contents, review_id, user_id)
VALUES("쩌러요",12,2);


-- TS_095 업체 이용후기 댓글 수정
-- 이용후기댓글 테이블의 내용을 수정한다.
UPDATE review_comments
SET review_comments_contents = "정말 감사합니다~~!"
WHERE review_comments_id = 12;


-- TS_096 업체 이용후기 댓글 삭제
-- 이용후기댓글 테이블의 내용을 삭제한다.
DELETE FROM review_comments
WHERE review_comments_id = 1
AND user_id = 7;    


-- TS_097 업체 이용후기 댓글 조회
-- 이용후기댓글 테이블의 내용을 조회한다.
SELECT review_comments_contents
FROM review_comments
WHERE review_comments_id = 1;


-- TS_098 커뮤니티 게시글 댓글 작성
-- 게시판 댓글을 테이블에 데이터를 입력한다.
INSERT INTO board_comments (board_comments_content, board_id, user_id)
VALUES ('가나업체 좋아요.이 업체 정말 좋네요, 제가 찾고 싶은 곳이에요', 1, 3);


-- TS_099 커뮤니티 게시글 댓글 수정
-- 게시판 댓글을 테이블 중 내용을 수정한다.
UPDATE board_comments
SET board_comments_content = "가나업체 대박이네요",
WHERE board_comments_content= 1;


-- TS_100 커뮤니티 게시글 댓글 삭제
-- 게시판 댓글 테이블에 특정 댓글을 삭제한다.
DELETE FROM board_comments
WHERE board_comments_id = 1;


-- TS_101 커뮤니티 게시글 댓글 조회
-- 게시판 댓글 테이블로부터 댓글 내용을 조회한다.
SELECT board_comments_content
FROM board_comments
WHERE board_comments_id = 3;


-- TS_102 커뮤니티 게시글 댓글 좋아요
-- 커뮤니티 게시글 댓글에 좋아요를 한다.
UPDATE board_like
SET board_like_is_delete = 'N'
WHERE board_comment_id = 1;


-- TS_103 커뮤니티 게시글 댓글 좋아요 취소
-- 커뮤니티 게시글 댓글에 좋아요를 취소한다.
UPDATE board_like
SET  board_like_is_delete = 'Y'
WHERE board_commnets_id =1;


-- TS_104 커뮤니티 게시글 댓글 좋아요 합계
-- 커뮤니티 게시글 댓글의 좋아요 수의 합계를 구한다.
SELECT COUNT(board_like_id)
FROM board_like
WHERE board_comments_id = 3
AND board_like_is_delete = 'N';


-- TS_105 커뮤니티 게시글 대댓글 작성
-- 댓글에 대한 대댓글을 작성한다.
INSERT INTO board_comments (board_comments_content, board_id, user_id, high_comment_id)
VALUES ('좋은 댓글 잘 보고 갑니다.', 1, 2, 3);


-- TS_106 커뮤니티 게시글 대댓글 조회
-- 댓글에 대한 대댓글을 조회한다.
SELECT board_comments_content
FROM board_comments
WHERE high_comment_id = 1;


-- TS_107 커뮤니티 게시글 대댓글 수정
-- 댓글에 대한 대댓글을 수정한다.
UPDATE board_comments
SET board_comments_content = "댓글 잘 보고 갑니다."
WHERE high_comment_id = 3;


-- TS_108 커뮤니티 게시글 대댓글 삭제
-- 댓글에 대한 대댓글을 삭제한다.
DELETE FROM board_comments
WHERE high_comment_id = 3;


-- TS_109 커뮤니티 게시글 대댓글 좋아요
-- 커뮤니티 게시글 대댓글에 좋아요를 한다.
UPDATE board_like
SET board_like_is_delete = 'N' 
WHERE board_comments_id = 4 
  AND user_id = 1;
  
  
-- TS_110 커뮤니티 게시글 대댓글 좋아요 취소
-- 커뮤니티 게시글 대댓글에 좋아요를 취소한다.
UPDATE board_like
SET board_like_is_delete = 'Y'  
WHERE board_comments_id = 4    
  AND user_id = 1;
  
  
-- TS_111 커뮤니티 게시글 대댓글 좋아요 합계
-- 커뮤니티 게시글 대댓글의 좋아요 수의 합계를 구한다.
SELECT SUM(CASE WHEN a.board_like_is_delete = 'N' THEN 1 ELSE 0 END) AS total_reply_likes
FROM board_like a
JOIN board_comments b ON a.board_comments_id = b.board_comments_id
WHERE b.high_comment_id IS NOT NULL;
