-- 사용자 user
INSERT INTO user (user_name, user_phone, user_login_id, user_login_password, user_email, user_num, user_created_at) 
VALUES
('김민준', '010-1234-5678', 'kimminjun', 'password1!', 'minjun.kim@example.com', '900101-1234567', '2024-02-10 10:00:00'),
('이서윤', '010-2345-6789', 'leeseoyun', 'password2!', 'seoyun.lee@example.com', '910202-2345678', '2024-02-10 10:10:00'),
('박지호', '010-3456-7890', 'parkjiho', 'password3!', 'jiho.park@example.com', '920303-3456789', '2024-02-10 10:20:00'),
('최윤서', '010-4567-8901', 'choiyunseo', 'password4!', 'yunseo.choi@example.com', '930404-4567890', '2024-02-10 10:30:00'),
('정도윤', '010-5678-9012', 'jeongdoyun', 'password5!', 'doyun.jeong@example.com', '940505-5678901', '2024-02-10 10:40:00'),
('한도현', '010-6789-0123', 'handohyun', 'password6!', 'dohyun.han@example.com', '950606-6789012', '2024-02-10 10:50:00'),
('송하율', '010-7890-1234', 'songhayul', 'password7!', 'hayul.song@example.com', '960707-7890123', '2024-02-10 11:00:00'),
('서예준', '010-8901-2345', 'seoyejun', 'password8!', 'yejun.seo@example.com', '970808-8901234', '2024-02-10 11:10:00'),
('배지우', '010-9012-3456', 'baejiwoo', 'password9!', 'jiwoo.bae@example.com', '980909-9012345', '2024-02-10 11:20:00'),
('유시우', '010-0123-4567', 'yusiwoo', 'password10!', 'siwoo.yu@example.com', '990101-0123456', '2024-02-10 11:30:00');



INSERT INTO user (user_name, user_phone, user_login_id, user_login_password, user_email, user_num, user_created_at) 
VALUES 
('김철수', '010-1234-5678', 'chulsu123', 'password1!', 'chulsu@example.com', '901010-1234567', NOW()),
('이영희', '010-9876-5432', 'younghee92', 'password2!', 'younghee@example.com', '920203-2345678', NOW()),
('박민수', '010-1111-2222', 'minsu_p', 'password3!', 'minsu@example.com', '880505-3456789', NOW()),
('정다은', '010-3333-4444', 'daeun_j', 'password4!', 'daeun@example.com', '950715-4567890', NOW()),
('오세훈', '010-5555-6666', 'sehun_o', 'password5!', 'sehun@example.com', '990912-5678901', NOW()),
('강지훈', '010-7777-8888', 'jihoon_k', 'password6!', 'jihoon@example.com', '970405-6789012', NOW()),
('윤서연', '010-9999-0000', 'seoyeon_y', 'password7!', 'seoyeon@example.com', '980120-7890123', NOW()),
('최민지', '010-2468-1357', 'minji_c', 'password8!', 'minji@example.com', '930330-8901234', NOW()),
('배도현', '010-3691-4825', 'dohyun_b', 'password9!', 'dohyun@example.com', '910718-9012345', NOW()),
('송하준', '010-1357-2468', 'hajun_s', 'password10!', 'hajun@example.com', '960810-0123456', NOW());


UPDATE user
	SET ROLE = 'business'
	WHERE user_id IN(1,2,3,4,5);
	
-- 사업자 business_user
INSERT INTO business_user (user_id, business_number, doc, role, company_name, company_phone, company_location)
VALUES
(1, '123-45-67890', 'doc1.pdf', 'house', '강남부동산중개법인', '02-512-3456', '서울시 강남구 테헤란로 87'),
(2, '234-56-78901', 'doc2.pdf', 'move', '원스톱 이사서비스', '031-789-4561', '경기도 성남시 분당구 정자동 21'),
(3, '345-67-89012', 'doc3.pdf', 'interior', '디자인하우스 인테리어', '051-265-9874', '부산시 해운대구 해운대로 120'),
(4, '456-78-90123', 'doc4.pdf', 'house', '서울랜드 공인중개사사무소', '042-456-7812', '대전시 유성구 문화로 55'),
(5, '567-89-01234', 'doc5.pdf', 'move', '이사명가 익스프레스', '062-392-5674', '광주시 서구 무등로 301');
INSERT INTO user (user_id ,user_name, user_phone, user_login_id, user_login_password, user_email, user_num, user_created_at) 
VALUES
(999,'관리자', '010-6371-9689', 'admin', 'admin', 'admin@admin.com', '001111-301554', '2025-02-25 10:30:00');
-- 게시판 board

INSERT INTO board 
(board_title, board_content, user_id, board_image)
VALUES
('현관 인테리어, 첫인상이 달라졌어요!', '신발장 위에 예쁜 거울을 걸고 작은 테이블을 배치했더니 현관 분위기가 확 살아났어요. 방문하는 친구들도 칭찬해요!', 6, 'entryway_decor.jpg'),
('우리집 거실, 카페처럼 꾸며봤어요!', '거실에 우드톤 가구와 따뜻한 조명을 배치했더니 카페 분위기가 완성됐어요. 소파 앞에는 러그를 깔아서 아늑함을 더했답니다!', 7, 'cozy_livingroom.jpg'),
('주방 리모델링! 화이트 & 우드 감성으로', '오래된 주방을 화이트 톤으로 리모델링하고 원목 식탁을 놓았어요. 따뜻하면서도 깔끔한 느낌이 완성됐어요.', 3, 'kitchen_remodel.jpg'),
('이사 스트레스 줄이는 법', '이사할 때 챙겨야 할 것들과 미리 준비해야 할 것들에 대해 공유해요.',2, 'moving_checklist.jpg'),
('셀프 인테리어? 이런 부분은 전문가와 상의하세요!', '셀프로 시도할 수 있는 인테리어와 전문가의 도움이 필요한 부분을 구분하여 안내해드립니다.', 3, 'interior_advice.jpg'),
('강남구 신축 아파트 분양 정보', '강남구에서 새롭게 분양하는 아파트 정보를 정리했습니다. 입지 조건과 청약 일정이 궁금하신 분들은 참고하세요!', 4, 'gangnam_apartment.jpg'),
('포장이사 vs 일반이사, 어떤 차이가 있을까요?', '포장이사와 일반이사의 차이를 비교하고, 각 방식의 장단점을 알려드립니다. 본인에게 맞는 방법을 선택하세요!', 5, 'moving_comparison.jpg'),
('셀프 페인팅으로 분위기 확 바꿨어요!', '흰 벽이 심심해서 직접 페인트칠했어요. 차분한 그레이 컬러로 바꿨더니 집이 훨씬 세련돼 보입니다.', 8, 'self_painting.jpg'),
('전세 계약 시 반드시 확인해야 할 사항', '전세 계약할 때 놓치기 쉬운 중요한 체크리스트를 정리했습니다. 사기 피해를 방지하기 위해 꼭 확인하세요!', 1, NULL),
('오래된 아파트 전체 리모델링 후기', '20년 된 아파트를 올 리모델링 했어요. 주방, 거실, 화장실까지 모두 새롭게 바뀌었고, 동선이 훨씬 편리해졌습니다. 감동입니다!', 10, 'full_remodeling.jpg');
INSERT INTO board 
(board_title, board_content, user_id, board_image)
VALUES
('서비스 점검 일정 공지', '안녕하세요. 원활한 서비스 제공을 위해 서버 점검이 진행될 예정입니다.\n- 점검 일시: 2024년 2월 15일 00:00 ~ 04:00\n이용에 불편을 드려 죄송하며, 더욱 안정적인 서비스를 제공하기 위해 노력하겠습니다. 감사합니다.', 999, NULL);

-- 게시판 댓글 board_comments
INSERT INTO board_comments 
(board_comments_content, board_id, user_id)
VALUE
('거실 인테리어 너무 예쁘네요! 저도 참고해서 꾸며봐야겠어요.', 2, 8),
('주방 리모델링 완전 대박이네요! 동선이 진짜 좋아보여요.', 3, 3),
('현관 분위기가 진짜 좋아졌네요. 조명 선택이 정말 탁월한 것 같아요!', 1, 4),
('이사 짐 정리 꿀팁 감사합니다! 다음 달에 이사하는데 큰 도움이 될 것 같아요.', 4, 10),
('포장이사랑 일반이사 고민 중이었는데 비교 내용이 유용하네요!', 7, 6),
('원룸 이사 비용이 부담됐는데, 비용 절약 팁 정말 좋네요. 참고할게요.', 4, 7),
('강남 신축 아파트 관심 있는데, 더 자세한 분양 정보도 알려주실 수 있을까요?', 6, 8),
('전세 계약 시 체크리스트 유용하네요! 계약 전에 다시 한 번 점검해야겠어요.', 9, 9),
('최근 부동산 시장 변동이 심한데, 분석 내용이 이해하기 쉽게 정리돼 있어서 좋네요.',6, 10);

-- 상담 counsel
INSERT INTO counsel 
(user_id, business_user_id, counsel_content, counsel_image)
VALUES
(11, 1, '강남역 근처 원룸 매물을 찾고 있습니다. 보증금 500~1000만 원, 월세 60 이하 조건으로 가능한 매물 있나요?', NULL),
(12, 4, '전세 아파트를 찾고 있습니다. 서울 강북 지역으로 1억~1억 5천 사이의 매물이 있을까요?', 'apartment_lease.jpg'),
(13, 1, '강남 아파트 매매를 고려 중인데, 5억 이하로 괜찮은 매물 추천해주실 수 있나요?', NULL),
(14, 5, '포장이사 견적을 받고 싶어요. 30평 아파트 이사 비용이 어느 정도 들까요?', 'moving_estimate.jpg'),
(15, 2, '이사 날짜가 확정됐는데 예약 가능한지 문의드립니다. 추가 비용이 드는 항목도 궁금해요.', NULL),
(16, 2, '지방에서 서울로 원룸 이사하려고 하는데, 비용과 절차가 궁금합니다.', 'small_move.jpg'),
(17, 3, '거실 인테리어를 새롭게 하고 싶은데, 우드톤으로 시공하면 비용이 얼마나 들까요?', 'livingroom_design.jpg'),
(18, 3, '주방 리모델링을 계획 중인데, 수납공간을 극대화할 수 있는 방법이 있을까요?', NULL),
(19, 3, '아이방을 따뜻한 분위기로 꾸미고 싶은데, 추천해주실 디자인이 있을까요?', 'kidsroom_idea.jpg'),
(20, 3, '화장실 리모델링 상담받고 싶습니다. 최근 트렌드와 방수 시공 관련 정보 부탁드려요.', NULL);


-- 업체 소개 portfolio
INSERT INTO portfolio (user_id)
VALUES
(1), 
(1), 
(1), 
(1), 
(1), 
(4),
(4), 
(4),
(4), 
(4), 
(3), 
(3),
(3), 
(3),
(3), 
(3),
(3), 
(3),
(3), 
(3),
(2),
(2),
(2),
(2),
(2),
(5),
(5),
(5),
(5),
(5);
INSERT INTO portfolio (user_id)
VALUES
(1),
(1), (1), (1), (1), (1), (1), 
(4), (4),(4),(4),(4),(4),(4),(4);
INSERT INTO portfolio (user_id)
VALUES
(2),
(2), (2), (2), (2), (2), (2), 
(5), (5),(5),(5),(5),(5),(5),(5);
INSERT INTO portfolio (user_id)
VALUES
(3),
(3), (3), (3), (3), (3), (3), 
(3), (3),(3),(3),(3),(3),(3),(3);
-- 부동산 업체 매물 apt


INSERT
INTO apt
(house_location, bathroom, stairs, room_count, price, floor_space, portfolio_id, house_image, deal_type)
VALUES
('서울 강남구 역삼동', 2, '중층', 3, 900000000, 35, 1, 'image1.jpg', '매매'),
('서울 마포구 상암동', 1, '중층', 2, 550000000, 25, 2, 'image2.jpg', '매매'),
('서울 송파구 잠실동', 3, '고층', 4, 1200000000, 40, 3, 'image3.jpg', '전세'),
('서울 강북구 수유동', 2, '저층', 3, 750000000, 30, 4, 'image4.jpg', '매매'),
('서울 서초구 방배동', 1, '중층', 2, 600000000, 28, 5, 'image5.jpg', '전세'),
('경기도 성남시 분당구', 2, '저층', 3, 650000000, 38, 6, 'image6.jpg', '매매'),
('서울 용산구 한남동', 3, '고층', 4, 1100000000, 39, 7, 'image7.jpg', '전세'),
('서울 동작구 상도동', 2, '중층', 3, 850000000, 32, 8, 'image8.jpg', '매매'),
('서울 강서구 화곡동', 2, '저층', 3, 720000000, 34, 9, 'image9.jpg', '매매'),
('경기도 고양시 일산동구', 2, '중층', 3, 500000000, 20, 10, 'image10.jpg', '전세'),
('서울 강서구 화곡동', 3, '저층', 4, 55000000, 31, 31, 'image31.jpg', '전세'),
('서울 서초구 방배동', 2, '고층', 4, 600000000, 40, 32, 'image32.jpg', '매매'),
('서울 동작구 상도동', 1, '저층', 2, 1200000000, 27, 33, 'image33.jpg', '매매'),
('서울 마포구 상암동', 2, '저층', 4, 30000000, 37, 34, 'image34.jpg', '매매'),
('서울 중구 을지로', 1, '저층', 1, 600000000, 29, 35, 'image35.jpg', '전세'),
('서울 강북구 수유동', 3, '중층', 5, 650000000, 38, 36, 'image36.jpg', '매매'),
('서울 강남구 역삼동', 1, '중층', 2, 300000000, 27, 37, 'image37.jpg', '전세'),
('서울 서초구 방배동', 2, '고층', 4, 68000000, 40, 38, 'image38.jpg', '매매'),
('경기도 수원시 영통구', 1, '저층', 1, 15000000, 23, 39, 'image39.jpg', '전세'),
('서울 송파구 잠실동', 5, '저층', 3, 500000000, 33, 40, 'image40.jpg', '매매'),
('서울 용산구 한남동', 2, '고층', 3, 300000000, 35, 41, 'image41.jpg', '전세'),
('서울 용산구 한남동', 2, '고층', 3, 350000000, 35, 42, 'image42.jpg', '전세'),
('서울 강서구 화곡동', 3, '중층', 4, 720000000, 34, 43, 'image43.jpg', '매매'),
('경기도 수원시 영통구', 1, '저층', 1, 10000000, 23, 44, 'image44.jpg', '전세'),
('서울 동작구 상도동', 1, '저층', 4, 600000000, 25, 45, 'image45.jpg', '매매');
-- 매물 설문지 house_survey
INSERT
INTO house_survey
(budget, deal_type, house_location, floor_space, bathroom, stairs, user_id, room_count)
VALUES (700000000, '전세', '서울 중구 을지로', 29, 1, '저층', 14, 1)
,(3500000000, '전세', '서울 용산구 한남동', 39, 3, '고층', 6, 4)
,(350000000, '전세', '서울 용산구 한남동', 35, 2, '고층', 16, 3)
,(500000000, '매매', '서울 송파구 잠실동', 33, 5, '저층', 11, 3)
,(700000000, '매매', '서울 서초구 방배동', 40, 2, '고층', 10, 4)
,(700000000, '전세', '서울 서초구 방배동', 28, 1, '중층', 20, 2)
,(450000000, '매매', '서울 마포구 상암동', 39, 2, '저층', 13, 4)
,(1000000000, '매매', '서울 동작구 상도동', 25, 1, '저층', 9, 4)
,(1000000000, '매매', '서울 동작구 상도동', 30, 2, '중층', 19, 3)
,(800000000, '매매', '서울 강서구 화곡동', 34, 3, '중층', 7, 4)
,(800000000, '매매', '서울 강서구 화곡동', 34, 3, '중층', 17, 4)
,(800000000, '매매', '서울 강북구 수유동', 38, 3, '중층', 15, 5)
,(300000000, '전세', '서울 강남구 역삼동', 27, 1, '중층', 12, 2)
,(150000000, '전세', '경기도 수원시 영통구', 23, 1, '저층', 8, 1)
,(750000000, '매매', '경기도 성남시 분당구', 38, 2, '저층', 18, 3);
-- 인테리어 업체 소개 interior
INSERT INTO interior (portfolio_id, interior_image, concept, interior_house_type, interior_budget, construction_date) 
VALUES (11, 'interior_image1.jpg', '모던', '아파트', 50000000, '2025-02-01 10:00:00'),
		 (12, 'interior_image2.jpg', '클래식', '원룸', 15000000, '2025-02-05 09:00:00'),
		 (13, 'interior_image3.jpg', '내추럴', '투룸', 35000000, '2025-02-10 11:00:00'),
		 (14, 'interior_image4.jpg', '빈티지', '오피스텔', 20000000, '2025-02-12 14:00:00'),
  		 (15, 'interior_image5.jpg', '로맨틱', '전원주택', 80000000, '2025-02-15 13:00:00'),
		 (16, 'interior_image6.jpg', '레트로', '아파트', 60000000, '2025-02-18 16:00:00'),
		 (17, 'interior_image7.jpg', '아늑함', '원룸', 12000000, '2025-02-20 17:00:00'),
		 (18, 'interior_image8.jpg', '자연친화', '투룸', 45000000, '2025-02-22 18:00:00'),
		 (19, 'interior_image9.jpg', '청량함', '오피스텔', 25000000, '2025-02-25 15:00:00'),
		 (20, 'interior_image10.jpg', '조화로움', '전원주택', 120000000, '2025-02-28 19:00:00'),
		 (61, 'interior_image61.jpg', '내추럴', '아파트', 62000000, '2025-03-01 10:00:00'),
		 (62, 'interior_image62.jpg', '로맨틱', '원룸', 13000000, '2025-03-03 09:00:00'),
		 (63, 'interior_image63.jpg', '아늑함', '투룸', 46000000, '2025-03-05 11:00:00'),
		 (64, 'interior_image64.jpg', '자연친화', '오피스텔', 25000000, '2025-03-07 14:00:00'),
		 (65, 'interior_image65.jpg', '모던', '전원주택', 75000000, '2025-03-08 13:00:00'),
		 (66, 'interior_image66.jpg', '클래식', '아파트', 52000000, '2025-03-09 16:00:00'),
		 (67, 'interior_image67.jpg', '내추럴', '원룸', 16000000, '2025-03-10 17:00:00'),
		 (68, 'interior_image68.jpg', '내추럴', '투룸', 38000000, '2025-03-12 11:00:00'),
		 (69, 'interior_image69.jpg', '모던', '전원주택', 85000000, '2025-03-13 12:00:00'),
		 (70, 'interior_image70.jpg', '아늑함', '오피스텔', 26000000, '2025-03-14 15:00:00'),
		 (71, 'interior_image71.jpg', '레트로', '아파트', 62000000, '2025-03-15 10:00:00'),
		 (72, 'interior_image72.jpg', '조화로움', '원룸', 14000000, '2025-03-16 09:00:00'),
		 (73, 'interior_image73.jpg', '로맨틱', '투룸', 47000000, '2025-03-18 17:00:00'),
		 (74, 'interior_image74.jpg', '정량함', '오피스텔', 23000000, '2025-03-19 18:00:00'),
		 (75, 'interior_image75.jpg', '레트로', '전원주택', 72000000, '2025-03-20 19:00:00');


-- 이사 업체 소개 move
INSERT
INTO move
(portfolio_id, active_location, min_price, max_price, move_type)
VALUES (21, '서울 강남구, 송파구', 100000, 300000, '포장')
,(22, '서울 마포구, 용산구', 70000, 250000, '반포장')
,(23, '서울 강북구, 서대문구', 90000, 280000, '포장')
,(24, '경기도 성남시, 고양시', 80000, 220000, '반포장')
,(25, '서울 동작구, 관악구', 120000, 350000, '포장')
,(26, '서울 강서구, 구로구', 100000, 270000, '반포장')
,(27, '서울 용산구, 마포구', 95000, 250000, '포장')
,(28, '경기도 부천시, 시흥시', 85000, 240000, '반포장')
,(29, '서울 성동구, 광진구', 110000, 320000, '포장')
,(30, '서울 노원구, 중랑구', 70000, 220000, '반포장')
,(46, '서울 강남구, 서초구', 110000, 320000, '포장')
,(47, '서울 마포구, 용산구', 80000, 260000, '반포장')
,(48, '서울 강남구, 용산구', 95000, 280000, '포장')
,(49, '서울 동작구, 관악구', 105000, 300000, '반포장')
,(50, '서울 강서구, 용산구', 90000, 250000, '포장')
,(51, '서울 송파구, 강남구', 95000, 270000, '반포장')
,(52, '서울 중구, 서대문구', 98000, 290000, '포장')
,(53, '경기도 부천시, 시흥시', 87000, 240000, '반포장')
,(54, '서울 강북구, 종로구', 97000, 260000, '포장')
,(55, '서울 노원구, 성북구', 75000, 230000, '반포장')
,(56, '서울 송파구, 강남구', 96000, 275000, '반포장')
,(57, '서울 중구, 서대문구', 99000, 295000, '포장')
,(58, '경기도 부천시, 시흥시', 88000, 245000, '반포장')
,(59, '서울 강북구, 종로구', 98000, 265000, '포장')
,(60, '서울 노원구, 성북구', 76000, 235000, '반포장');

-- 이사 설문조사(사용자) move_survey
INSERT INTO move_survey (user_id, move_type, from_address, to_address)
VALUES (6, '반포장', '서울 송파구 잠실동 10-11', '서울 강남구 대치동 54-78'),
(7, '포장', '서울 마포구 상암동 10-1', '서울 서대문구 홍제동 12-34'),
(8, '반포장', '경기도 부천시 상동 34-56', '경기도 시흥시 정왕동 78-90'),
(9, '포장', '서울 강북구 수유동 23-45', '서울 종로구 종로1가 1-1'),
(10, '반포장', '서울 서대문구 홍제동 12-34', '서울 성북구 정릉동 12-34'),
(11, '포장', '서울 마포구 상암동 10-1', '서울 서초구 반포동 56-78'),
(12, '반포장', '경기도 시흥시 정왕동 78-90', '서울 강북구 수유동 23-45'),
(13, '포장', '경기도 성남시 분당구 정자동 234-56', '서울 마포구 상암동 10-1'),
(14, '반포장', '서울 동작구 상도동 12-34', '서울 관악구 봉천동 45-67'),
(15, '포장', '서울 강서구 화곡동 98-76', '경기도 고양시 일산동구 123-45'),
(16, '반포장', '서울 송파구 잠실동 10-11', '서울 강남구 대치동 54-78'),
(17, '포장', '서울 강서구 화곡동 98-76', '서울 중구 을지로 56-89'),
(18, '반포장', '경기도 부천시 상동 34-56', '서울 용산구 한남동 22-33'),
(19, '포장', '서울 마포구 상암동 10-1', '서울 종로구 종로1가 1-1'),
(20, '반포장', '서울 강북구 수유동 23-45', '서울 성북구 정릉동 12-34');
-- 인테리어 설문조사(사용자) interior_survey
INSERT INTO interior_survey (user_id, interior_concept, interior_house_type, interior_house_size, interior_budget) VALUES 
(7, '로맨틱', '원룸', 18, 17000000),
(8, '아늑함', '투룸', 45, 50000000),
(9, '자연친화', '오피스텔', 28, 30000000),
(10, '모던', '전원주택', 80, 80000000),
(11, '클래식', '아파트', 30, 60000000),
(12, '내추럴', '원룸', 20, 25000000),
(13, '모던', '투룸', 40, 45000000),
(14, '모던', '전원주택', 100, 90000000),
(15, '아늑함', '오피스텔', 25, 35000000),
(16, '청량함', '아파트', 35, 75000000),
(17, '조화로움', '원룸', 18, 20500000),
(18, '로맨틱', '투룸', 45, 55000000),
(19, '내추럴', '오피스텔', 28, 30000000),
(20, '레트로', '전원주택', 80, 80000000);


-- 즐겨찾기 likes
INSERT INTO likes 
(user_id, portfolio_id)
VALUES
(11, 2), 
(12, 5), 
(13, 1), 
(14, 8), 
(15, 4), 
(6, 6),
(7, 3), 
(8, 7),  
(9, 9),  
(10, 10);



CREATE VIEW apt_portfolio AS
    SELECT 
        a.portfolio_id, a.user_id,
        c.company_name, c.role,
        b.house_location, b.stairs, b.bathroom, 
        b.room_count, b.price, b.floor_space, b.house_image, a.is_delete,b.deal_type
        FROM portfolio a
        JOIN apt b ON a.portfolio_id = b.portfolio_id
        JOIN business_user c ON a.user_id = c.user_id;

CREATE VIEW interior_portfolio AS
    SELECT 
        a.portfolio_id, a.user_id,
        c.company_name, c.role,
        b.interior_image, b.concept, b.interior_house_type,
        b.interior_budget, b.construction_date, a.is_delete

        FROM portfolio a
        JOIN interior b ON a.portfolio_id = b.portfolio_id
        JOIN business_user c ON a.user_id = c.user_id;


CREATE VIEW move_portfolio AS
    SELECT 
        a.portfolio_id, a.user_id,
        c.company_name, c.role,
        b.active_location, b.min_price, b.max_price, b.move_type, a.is_delete
        FROM portfolio a
        JOIN move b ON a.portfolio_id = b.portfolio_id
        JOIN business_user c ON a.user_id = c.user_id;

-- 업체 추천 recommend **************************************

INSERT INTO recommend (portfolio_id, user_id)
SELECT  DISTINCT ap.portfolio_id, hs.user_id
FROM apt_portfolio ap
JOIN house_survey hs ON  hs.floor_space DIV 10 = ap.floor_space DIV 10
                            AND hs.stairs = ap.stairs
                            AND hs.bathroom = ap.bathroom
                            AND hs.budget >= ap.price
                            AND hs.room_count = ap.room_count
                            AND hs.deal_type = ap.deal_type
WHERE hs.user_id IN (6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);


INSERT INTO recommend (portfolio_id, user_id)
SELECT DISTINCT p.portfolio_id ,ms.user_id
FROM move_portfolio p
JOIN move_survey ms ON p.move_type = ms.move_type
WHERE ms.user_id IN(6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
    AND (
        -- from_address에서 두 번째 단어가 active_location에 포함되는지 확인
        TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(ms.from_address, ' ', 2), ' ', -1)) IN (
            TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(p.active_location, ',', 1), ' ', -1)), 
            TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(p.active_location, ',', 2), ' ', -1))
        )
        OR
        -- to_address에서 두 번째 단어가 active_location에 포함되는지 확인
        TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(ms.to_address, ' ', 2), ' ', -1)) IN (
            TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(p.active_location, ',', 1), ' ', -1)), 
            TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(p.active_location, ',', 2), ' ', -1))
        )
    );
    
INSERT INTO recommend (portfolio_id, user_id)
SELECT DISTINCT i.portfolio_id, ins.user_id
FROM interior_portfolio i
JOIN interior_survey ins ON ins.interior_concept = i.concept 
                                 AND ins.interior_house_type = i.interior_house_type 
                         AND ins.interior_budget >= i.interior_budget
WHERE ins.user_id IN (6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);

-- 회원 신고 report
INSERT INTO report 
(report_contents, reporter_user_id, report_date, reported_id, board_id, board_comments_id)
VALUES
('욕설을 사용한 게시물', 1, NOW(), 3, 3, NULL),  -- 회원 1이 회원 3을 게시물에서 욕설로 신고
('불쾌한 댓글 내용', 2, NOW(), 4, NULL, 3),       -- 회원 2가 회원 4를 댓글로 불쾌한 내용으로 신고
('허위 정보 게시', 3, NOW(), 5, 7, NULL),        -- 회원 3이 회원 5의 게시물 허위 정보 신고
('광고성 댓글', 4, NOW(), 6, NULL, 5),           -- 회원 4가 회원 6의 댓글을 광고성으로 신고
('비방하는 댓글', 5, NOW(), 7, NULL, 6),         -- 회원 5가 회원 7의 댓글을 비방으로 신고
('욕설과 비방 댓글', 6, NOW(), 8, NULL, 7),      -- 회원 6이 회원 8의 댓글을 욕설과 비방으로 신고
('중복 게시물', 7, NOW(), 10, 10, NULL),          -- 회원 7이 회원 9의 중복 게시물 신고
('비방 댓글', 8, NOW(), 10, NULL, 9),           -- 회원 8이 회원 10의 비방 댓글 신고
('낚시성 게시물', 9, NOW(), 1, 9, NULL),         -- 회원 9가 회원 1의 낚시성 게시물 신고
('불법 게시물', 10, NOW(), 2, 4, NULL);

-- 이용 후기 review 
INSERT INTO review (review_contents, portfolio_id, counsel_id, review_image)
VALUES 
('상담 후 집 인테리어가 너무 만족스러웠습니다!', 5, 1, 'image_url.jpg'),
('이사 서비스가 너무 친절하고 빠르게 끝났어요. 강추합니다!', 25, 5, NULL),
('부동산 상담 받았는데, 원하는 매물이 잘 나왔어요. 추천드립니다.', 32, 5, NULL),
('인테리어 상담 후, 집 분위기가 완전히 달라졌습니다. 정말 만족해요!', 64, 7, 'image.jpg'),
('부동산 상담을 통해 원하는 조건의 집을 찾을 수 있어서 너무 감사해요.', 45, 2, 'house_image2.jpg');

-- 이용 후기 댓글 review_comments 
INSERT INTO review_comments (review_comments_contents, review_id, user_id)
VALUES 
('고객님께서 만족하셨다니 기쁩니다. 앞으로도 최고의 서비스를 제공하겠습니다!', 6, 1),
('이사를 도와드리게 되어 정말 기쁩니다. 앞으로도 더 나은 서비스를 위해 노력하겠습니다.', 7, 2),
('부동산 상담을 도와드려 기쁩니다. 더 좋은 매물이 있을 경우 다시 찾아주세요.', 8, 1),
('인테리어 서비스가 만족스러우셨다니 감사합니다. 고객님을 위한 맞춤형 서비스를 제공하겠습니다.', 9, 3),
('빠르고 정확한 이사 서비스로 다시 찾아주셔서 감사합니다. 만족하셨다니 다행입니다.', 10, 4);



-- 게시글 좋아요 board_like
INSERT INTO board_like (board_like_id, board_id, user_id, board_like_is_delete)
VALUES
(1, 1, 1, 'N'),  -- 사용자 1 (김민준)이 게시판 글 1번에 좋아요
(2, 2, 2, 'N'),  -- 사용자 2 (이서윤)이 게시판 글 2번에 좋아요
(3, 3, 3, 'N'),  -- 사용자 3 (박지호)이 게시판 글 3번에 좋아요
(4, 4, 4, 'N'),  -- 사용자 4 (최윤서)가 게시판 글 4번에 좋아요
(5, 5, 5, 'N'),  -- 사용자 5 (정도윤)이 게시판 글 5번에 좋아요
(6, 6, 6, 'N'),  -- 사용자 6 (한도현)이 게시판 글 6번에 좋아요
(7, 7, 7, 'N'),  -- 사용자 7 (송하율)이 게시판 글 7번에 좋아요
(8, 8, 8, 'N'),  -- 사용자 8 (서예준)이 게시판 글 8번에 좋아요
(9, 9, 9, 'N'),  -- 사용자 9 (배지우)이 게시판 글 9번에 좋아요
(10, 10, 10, 'N'); -- 사용자 10 (유시우)이 게시판 글 10번에 좋아요

