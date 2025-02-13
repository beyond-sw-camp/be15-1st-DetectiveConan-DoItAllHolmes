-- TS_016. 부동산 매물 글 수정

-- 해당 게시글이 어떤 사업자가 작성했는지 확인
SELECT * FROM
portfolio
WHERE user_id =3;
SELECT * FROM apt;
-- 매물 수정
UPDATE apt
SET price = 2000000,
	house_image = "image5.jpg"
	WHERE portfolio_id = 30;
	
SELECT * FROM apt;