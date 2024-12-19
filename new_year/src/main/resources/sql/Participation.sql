-- 참가 테이블
CREATE TABLE Participation (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- PK
    user_id BIGINT UNSIGNED NOT NULL,             -- 사용자 ID (FK)
    meeting_id BIGINT UNSIGNED NOT NULL,          -- 모임 ID (FK)
    joined_at DATETIME DEFAULT CURRENT_TIMESTAMP, -- 참가일
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP, -- 생성일
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- 수정일
    UNIQUE KEY unique_participation (user_id),    -- 한 사용자는 한 모임에만 참가 가능
    FOREIGN KEY (user_id) REFERENCES User (id),   -- 외래 키
    FOREIGN KEY (meeting_id) REFERENCES Meeting (id) -- 외래 키
);