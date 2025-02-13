-- TS-39 인테리어 게시글 수정	
-- 사업자는 포트폴리오테이블에서 인테리어 게시글 정보 글을 수정할 수 있다.
UPDATE interior a
JOIN portfolio b ON a.portfolio_id = b.portfolio_id
SET a.interior_image = 'http://ss', a.concept = '모던 안함', a.interior_house_type = '아파트', 
    a.interior_house_size = 10, a.interior_budget = 10000, a.construction_date = '2025-03-04'
WHERE a.portfolio_id = 101 AND b.user_id = 3;