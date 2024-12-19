-- 방명록/회고 테이블
CREATE TABLE Comment (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- PK
    meeting_id BIGINT UNSIGNED NOT NULL,           -- 모임 ID (FK)
    content TEXT NOT NULL,                         -- 작성 내용
    author_name VARCHAR(255) NOT NULL,             -- 작성자 이름
    author_age INT UNSIGNED NOT NULL,              -- 작성자 나이
    author_location VARCHAR(255) NOT NULL,         -- 작성자 거주지
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP, -- 생성일
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- 수정일
    FOREIGN KEY (meeting_id) REFERENCES Meeting (id) -- 외래 키
);