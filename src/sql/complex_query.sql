-- Auto-generated: complex query v6144
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_6144 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_6144_name
    ON complex_query_6144(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_6144_created
    ON complex_query_6144(created_at DESC);

-- Seed data
INSERT INTO complex_query_6144 (name, description)
VALUES
    ('item_0', 'val_0_6144'),
    ('item_1', 'val_1_6144'),
    ('item_2', 'val_2_6144'),
    ('item_3', 'val_3_6144'),
    ('item_4', 'val_4_6144'),
    ('item_5', 'val_5_6144'),
    ('item_6', 'val_6_6144'),
    ('item_7', 'val_7_6144'),

-- View
CREATE OR REPLACE VIEW v_complex_query_6144_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_6144
GROUP BY name
ORDER BY total DESC;
