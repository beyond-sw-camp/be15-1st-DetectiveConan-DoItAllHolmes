-- TS_087 통계데이터 조회
-- 1. 즐겨찾기, 좋아요 별 Top3
-- 2. 일자별, 주차별, 월별 고객 수, 사업자 수 조회
-- 즐겨찾기 별 Top 3
select COUNT(*) AS count
from likes
join portfolio USING (portfolio_id)
group by portfolio_id
order by count DESC
LIMIT 3;

-- 좋아요 별 Top 3
SELECT count(*) AS count
FROM board_like
JOIN board USING (board_id)
GROUP BY board_id
ORDER        BY count DESC
LIMIT 3;

-- 일자별 고객수
select count(*)
from user
where user_created_at = "2025-02-11";

-- 일자별 사업자 수
select count(*)
from business_user
join user USING (user_id)
where user.role = 'business' and user_created_at = "2025-02-11";

-- 월별 고객수
select count(*)
from user
where month(user_created_at) = "02";

-- 월별 사업자수
select count(*)
from business_user
join user USING (user_id)
where user.role = 'business' and month(user_created_at) = "02";