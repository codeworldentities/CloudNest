-- Auto-generated: index optimization v1135
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_1135 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_1135_name
    ON index_optimization_1135(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_1135_created
    ON index_optimization_1135(created_at DESC);

-- Seed data
INSERT INTO index_optimization_1135 (name, score)
VALUES
    ('item_0', 'val_0_1135'),
    ('item_1', 'val_1_1135'),
    ('item_2', 'val_2_1135'),
    ('item_3', 'val_3_1135'),
    ('item_4', 'val_4_1135'),
    ('item_5', 'val_5_1135'),
    ('item_6', 'val_6_1135'),
    ('item_7', 'val_7_1135'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_1135_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_1135
GROUP BY name
ORDER BY total DESC;
