-- Auto-generated: migration script v9101
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_9101 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    counter INTEGER DEFAULT 0,
    metadata JSONB,
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_9101_name
    ON migration_script_9101(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_9101_created
    ON migration_script_9101(created_at DESC);

-- Seed data
INSERT INTO migration_script_9101 (name, email)
VALUES
    ('item_0', 'val_0_9101'),
    ('item_1', 'val_1_9101'),
    ('item_2', 'val_2_9101'),
    ('item_3', 'val_3_9101'),
    ('item_4', 'val_4_9101'),
    ('item_5', 'val_5_9101'),
    ('item_6', 'val_6_9101'),
    ('item_7', 'val_7_9101');

-- View
CREATE OR REPLACE VIEW v_migration_script_9101_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_9101
GROUP BY name
ORDER BY total DESC;
