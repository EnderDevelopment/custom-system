CREATE TABLE IF NOT EXISTS custom_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_id VARCHAR(255) NOT NULL,
    data TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO custom_data (player_id, data) VALUES ('default', '{}');