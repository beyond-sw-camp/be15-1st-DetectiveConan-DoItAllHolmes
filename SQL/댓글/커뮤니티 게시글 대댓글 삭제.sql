-- TS_108 커뮤니티 게시글 대댓글 삭제
-- 댓글에 대한 대댓글을 삭제한다.
DELETE FROM board_comments
WHERE high_comment_id = 3;