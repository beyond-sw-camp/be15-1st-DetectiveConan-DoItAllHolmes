-- TS_106 커뮤니티 게시글 대댓글 조회
-- 댓글에 대한 대댓글을 조회한다.
SELECT board_comments_content
FROM board_comments
WHERE high_comment_id = 1;