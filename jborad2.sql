# 게사판 닉네임으로 출력 밑 순서대로
SELECT a.*, b.`nick` FROM `Article` AS a 
JOIN `User` AS b ON a.writer = b.uid 
ORDER BY `no` DESC
LIMIT 0, 10;
#게시물 채우기
INSERT INTO `Article` (`title`,`content`,`writer`,`regip`, `rdate`)
SELECT `title`, `content`, `writer`,`regip`,`rdate` FROM `Article`;

#전체 게시물 갯수
SELECT COUNT(*) FROM `Article`;

DELETE FROM `Article`;

