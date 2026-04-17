-- Auto-generated: schema — database schema definition v2601
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_2601 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    metadata JSONB,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2601_name
    ON schema_—_database_schema_definition_2601(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2601_created
    ON schema_—_database_schema_definition_2601(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_2601 (name, score)
VALUES
    ('item_0', 'val_0_2601'),
    ('item_1', 'val_1_2601'),
    ('item_2', 'val_2_2601'),
    ('item_3', 'val_3_2601'),
    ('item_4', 'val_4_2601'),
    ('item_5', 'val_5_2601'),
    ('item_6', 'val_6_2601'),
    ('item_7', 'val_7_2601'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_2601_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_2601
GROUP BY name
ORDER BY total DESC;
