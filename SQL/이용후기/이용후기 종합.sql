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


-- TS_090 이용후기 수정
-- 상담후기를 작성한 고객은 본인의 이용후기를 수정할 수 있다.
UPDATE review r
SET review_contents = '새로운 리뷰 내용'
WHERE EXISTS (
   SELECT 1
   FROM counsel c
   WHERE c.counsel_status = '작업완료'
   AND c.counsel_id = r.counsel_id
);


-- TS_091 이용후기 삭제
-- 상담후기를 작성한 고객은 본인의 이용후기를 삭제할 수 있다.
DELETE FROM review
WHERE counsel_id IN (
    SELECT c.counsel_id
    FROM counsel c
    JOIN business_user b ON c.business_user_id = b.user_id
    WHERE c.counsel_status = '작업완료'
    AND c.user_id = 12
);


-- TS_092 이용후기 조회
-- 모든 고객의 이용후기를 조회할 수 있다.
SELECT review_contents
FROM review;


-- TS_093 특정 이용후기 조회
-- 특정 고객의 이용후기를 조회할 수 있다.
select review_contents
from review
where review_id = 1;