-- TS_105 커뮤니티 게시글 대댓글 작성
-- 댓글에 대한 대댓글을 작성한다.
INSERT INTO board_comments (board_comments_content, board_id, user_id, high_comment_id)
VALUES ('좋은 댓글 잘 보고 갑니다.', 1, 2, 3);