-- Auto-generated: index optimization v5429
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_5429 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    email VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_5429_name
    ON index_optimization_5429(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_5429_created
    ON index_optimization_5429(created_at DESC);

-- Seed data
INSERT INTO index_optimization_5429 (name, status)
VALUES
    ('item_0', 'val_0_5429'),
    ('item_1', 'val_1_5429'),
    ('item_2', 'val_2_5429'),
    ('item_3', 'val_3_5429'),
    ('item_4', 'val_4_5429'),
    ('item_5', 'val_5_5429'),
    ('item_6', 'val_6_5429'),
    ('item_7', 'val_7_5429'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_5429_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_5429
GROUP BY name
ORDER BY total DESC;
