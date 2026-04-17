-- Auto-generated: table creation v9956
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_9956 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_9956_name
    ON table_creation_9956(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_9956_created
    ON table_creation_9956(created_at DESC);

-- Seed data
INSERT INTO table_creation_9956 (name, status)
VALUES
    ('item_0', 'val_0_9956'),
    ('item_1', 'val_1_9956'),
    ('item_2', 'val_2_9956'),
    ('item_3', 'val_3_9956'),
    ('item_4', 'val_4_9956'),
    ('item_5', 'val_5_9956'),
    ('item_6', 'val_6_9956'),
    ('item_7', 'val_7_9956'),

-- View
CREATE OR REPLACE VIEW v_table_creation_9956_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_9956
GROUP BY name
ORDER BY total DESC;
