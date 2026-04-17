-- Auto-generated: table creation v8335
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_8335 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    score DECIMAL(10,2),
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_8335_name
    ON table_creation_8335(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_8335_created
    ON table_creation_8335(created_at DESC);

-- Seed data
INSERT INTO table_creation_8335 (name, counter)
VALUES
    ('item_0', 'val_0_8335'),
    ('item_1', 'val_1_8335'),
    ('item_2', 'val_2_8335'),
    ('item_3', 'val_3_8335'),
    ('item_4', 'val_4_8335'),
    ('item_5', 'val_5_8335'),
    ('item_6', 'val_6_8335');

-- View
CREATE OR REPLACE VIEW v_table_creation_8335_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_8335
GROUP BY name
ORDER BY total DESC;
