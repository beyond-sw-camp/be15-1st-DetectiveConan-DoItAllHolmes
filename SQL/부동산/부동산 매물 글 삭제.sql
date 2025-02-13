-- TS_018. 부동산 매물 글 삭제
-- 아파트 매물의 id 조회
SELECT portfolio_id FROM apt;
SELECT * FROM apt;
-- 아파트 매물 삭제
DELETE FROM apt
WHERE portfolio_id = 30;

SELECT * FROM apt;