-- 모임 테이블
CREATE TABLE Meeting (
        id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- PK
        title VARCHAR(255) NOT NULL,                  -- 제목
        description TEXT NOT NULL,                    -- 내용
        image_url VARCHAR(255) DEFAULT NULL,          -- 이미지 URL
        state VARCHAR(50) NOT NULL,                   -- 상태
        location VARCHAR(255) NOT NULL,               -- 만날 위치
        creator_id BIGINT UNSIGNED NOT NULL,          -- 생성자 ID (FK)
        participant_limit INT UNSIGNED DEFAULT NULL,  -- 참가 제한 인원 수
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP, -- 생성일
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- 수정일
        FOREIGN KEY (creator_id) REFERENCES User (id) -- 외래 키
);