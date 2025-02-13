-- TS_005. 회원 신고
SELECT * FROM report;
INSERT INTO report (
    report_contents, 
    reporter_user_id, 
    report_date, 
    reported_id, 
    board_comments_id
) 
VALUES (
    '싸우자는 댓글글',
    1,
    NOW(),
    2,
    10
);
	-- 회원 신고 성공
		SELECT * FROM report
		WHERE report_id = (SELECT MAX(report_id) FROM report);