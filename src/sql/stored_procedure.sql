-- Auto-generated: stored procedure v7862
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_7862 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_7862_name
    ON stored_procedure_7862(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_7862_created
    ON stored_procedure_7862(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_7862 (name, description)
VALUES
    ('item_0', 'val_0_7862'),
    ('item_1', 'val_1_7862'),
    ('item_2', 'val_2_7862'),
    ('item_3', 'val_3_7862'),
    ('item_4', 'val_4_7862'),
    ('item_5', 'val_5_7862'),
    ('item_6', 'val_6_7862'),
    ('item_7', 'val_7_7862'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_7862_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_7862
GROUP BY name
ORDER BY total DESC;
