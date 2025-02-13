-- TS_107 커뮤니티 게시글 대댓글 수정
-- 댓글에 대한 대댓글을 수정한다.
UPDATE board_comments
SET board_comments_content = "댓글 잘 보고 갑니다."
WHERE high_comment_id = 3;
