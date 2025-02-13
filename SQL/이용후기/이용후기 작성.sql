-- TS_089 이용후기 작성
-- 상담 테이블에서 특정 회원의 상담단계가 "완료"인 고객에 한하여 이용후기 작성한다.
INSERT INTO review (review_contents, portfolio_id, counsel_id, review_image)
SELECT 
    '이 상담 너무 만족스러웠습니다!', 
    3, 
    c.counsel_id, 
    NULL
FROM counsel c
WHERE c.counsel_status = '작업완료';    
    
SELECT *
FROM review;   
