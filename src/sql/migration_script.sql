-- Auto-generated: migration script v6121
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_6121 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    priority SMALLINT DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_6121_name
    ON migration_script_6121(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_6121_created
    ON migration_script_6121(created_at DESC);

-- Seed data
INSERT INTO migration_script_6121 (name, description)
VALUES
    ('item_0', 'val_0_6121'),
    ('item_1', 'val_1_6121'),
    ('item_2', 'val_2_6121'),
    ('item_3', 'val_3_6121'),
    ('item_4', 'val_4_6121'),
    ('item_5', 'val_5_6121'),
    ('item_6', 'val_6_6121'),
    ('item_7', 'val_7_6121'),

-- View
CREATE OR REPLACE VIEW v_migration_script_6121_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_6121
GROUP BY name
ORDER BY total DESC;
