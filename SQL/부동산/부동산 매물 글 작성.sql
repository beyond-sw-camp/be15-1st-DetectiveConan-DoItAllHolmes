-- TS_015. 부동산 매물 글 작성
-- 소개글, 매물 엔티티 둘 다 insert
SELECT * FROM apt
INSERT INTO portfolio (portfolio_id, user_id, is_delete)
VALUES (NULL, 3, "N");
SELECT * FROM portfolio;
INSERT INTO apt(house_location, stairs, bathroom, room_count, price, floor_space,
portfolio_id, house_image)
VALUES ("서울 은평구 응암동",5,2,5,100000000,24,30,"image.jpg");

SELECT * FROM apt;