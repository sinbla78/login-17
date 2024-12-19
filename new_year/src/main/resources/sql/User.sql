-- 사용자 테이블
CREATE TABLE User (
                id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- PK
                username VARCHAR(255) NOT NULL UNIQUE,        -- 아이디
                password VARCHAR(255) NOT NULL,               -- 비밀번호 (해시 처리)
                name VARCHAR(255) NOT NULL,                   -- 이름
                age INT UNSIGNED NOT NULL,                    -- 나이
                state VARCHAR(50) NOT NULL,                   -- 상태
                location VARCHAR(255) NOT NULL,               -- 거주지
                created_at DATETIME DEFAULT CURRENT_TIMESTAMP, -- 가입일
                updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- 정보 수정일
);