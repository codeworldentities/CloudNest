-- Auto-generated: view creation v5096
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_5096 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    score DECIMAL(10,2),
    description TEXT,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_5096_name
    ON view_creation_5096(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_5096_created
    ON view_creation_5096(created_at DESC);

-- Seed data
INSERT INTO view_creation_5096 (name, status)
VALUES
    ('item_0', 'val_0_5096'),
    ('item_1', 'val_1_5096'),
    ('item_2', 'val_2_5096'),
    ('item_3', 'val_3_5096'),
    ('item_4', 'val_4_5096'),
    ('item_5', 'val_5_5096'),
    ('item_6', 'val_6_5096'),
    ('item_7', 'val_7_5096'),

-- View
CREATE OR REPLACE VIEW v_view_creation_5096_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_5096
GROUP BY name
ORDER BY total DESC;
