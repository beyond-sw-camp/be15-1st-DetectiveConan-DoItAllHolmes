-- TS_006. 내가 쓴 이용후기 모아보기
-- 이용후기를 작성한 고객인지 확인

SELECT
    review_contents, 
    portfolio_id
    
FROM 
    review
JOIN counsel USING (counsel_id)
WHERE user_id = 12;