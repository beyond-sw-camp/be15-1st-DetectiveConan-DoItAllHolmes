-- TS-38 인테리어 게시글 작성
--	사업자는 포트폴리오테이블에서 인테리어 게시글 정보 글을 작성할 수 있다.
INSERT INTO portfolio (portfolio_id,user_id, is_delete)
        VALUES (101,3, DEFAULT);
        
INSERT INTO interior (portfolio_id, interior_image, concept, interior_house_type, interior_house_size, interior_budget, construction_date)
	VALUES (101, 'interior_image1.jpg', '모던하고 깔끔한 디자인', '아파트', 30, 50000000, '2025-02-01 10:00:00');