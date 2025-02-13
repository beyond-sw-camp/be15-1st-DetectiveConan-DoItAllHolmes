-- TS_007. 즐겨찾기 모아보기
SELECT p.user_id, p.portfolio_id
FROM
	likes l
JOIN 
    portfolio p ON l.portfolio_id = p.portfolio_id
    JOIN apt a on p.portfolio_id = a.portfolio_id
UNION ALL
SELECT p.user_id, p.portfolio_id
FROM
	likes l
JOIN 
   portfolio p ON l.portfolio_id = p.portfolio_id
	JOIN interior i on p.portfolio_id= i.portfolio_id
	
UNION ALL
SELECT p.user_id, p.portfolio_id
FROM
	likes l
JOIN 
   portfolio p ON l.portfolio_id = p.portfolio_id
	JOIN move m on p.portfolio_id= m.portfolio_id;
-- => 자세한 정보를 원할 시 portfolio로 조인해서 조회