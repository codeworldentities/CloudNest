-- Auto-generated: index optimization v3856
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_3856 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    description TEXT,
    email VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_3856_name
    ON index_optimization_3856(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_3856_created
    ON index_optimization_3856(created_at DESC);

-- Seed data
INSERT INTO index_optimization_3856 (name, priority)
VALUES
    ('item_0', 'val_0_3856'),
    ('item_1', 'val_1_3856'),
    ('item_2', 'val_2_3856'),
    ('item_3', 'val_3_3856');

-- View
CREATE OR REPLACE VIEW v_index_optimization_3856_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_3856
GROUP BY name
ORDER BY total DESC;
