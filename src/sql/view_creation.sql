-- Auto-generated: view creation v4163
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_4163 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    priority SMALLINT DEFAULT 0,
    score DECIMAL(10,2),
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_4163_name
    ON view_creation_4163(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_4163_created
    ON view_creation_4163(created_at DESC);

-- Seed data
INSERT INTO view_creation_4163 (name, metadata)
VALUES
    ('item_0', 'val_0_4163'),
    ('item_1', 'val_1_4163'),
    ('item_2', 'val_2_4163'),
    ('item_3', 'val_3_4163'),
    ('item_4', 'val_4_4163'),
    ('item_5', 'val_5_4163'),
    ('item_6', 'val_6_4163'),
    ('item_7', 'val_7_4163');

-- View
CREATE OR REPLACE VIEW v_view_creation_4163_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_4163
GROUP BY name
ORDER BY total DESC;
