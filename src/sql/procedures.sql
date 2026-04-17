-- Auto-generated: procedures — procedures v2263
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_2263 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    score DECIMAL(10,2),
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_2263_name
    ON procedures_—_procedures_2263(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_2263_created
    ON procedures_—_procedures_2263(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_2263 (name, status)
VALUES
    ('item_0', 'val_0_2263'),
    ('item_1', 'val_1_2263'),
    ('item_2', 'val_2_2263'),
    ('item_3', 'val_3_2263'),
    ('item_4', 'val_4_2263'),
    ('item_5', 'val_5_2263'),
    ('item_6', 'val_6_2263'),
    ('item_7', 'val_7_2263'),

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_2263_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_2263
GROUP BY name
ORDER BY total DESC;
