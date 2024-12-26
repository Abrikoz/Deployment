CREATE TABLE availability_logs (
    id SERIAL PRIMARY KEY,
    app_id INT NOT NULL,
    status ENUM('UP', 'DOWN') NOT NULL,
    error_message VARCHAR(500),
    checked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (app_id) REFERENCES monitored_apps(id) ON DELETE CASCADE
);
