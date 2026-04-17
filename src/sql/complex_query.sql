-- Auto-generated: complex query v7558
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_7558 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    priority SMALLINT DEFAULT 0,
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_7558_name
    ON complex_query_7558(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_7558_created
    ON complex_query_7558(created_at DESC);

-- Seed data
INSERT INTO complex_query_7558 (name, is_active)
VALUES
    ('item_0', 'val_0_7558'),
    ('item_1', 'val_1_7558'),
    ('item_2', 'val_2_7558');

-- View
CREATE OR REPLACE VIEW v_complex_query_7558_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_7558
GROUP BY name
ORDER BY total DESC;
