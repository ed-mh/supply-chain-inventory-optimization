-- 1. Creación de la Base de Datos
CREATE DATABASE IF NOT EXISTS sch1_proyect;
USE sch1_proyect;

-- 2. Creación de la Tabla Principal
-- Nota: Usamos DECIMAL(10,2) para valores monetarios para evitar errores de redondeo de punto flotante.
CREATE TABLE IF NOT EXISTS processed_inventory_1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE NOT NULL,
    SKU_ID VARCHAR(50) NOT NULL,
    Warehouse_ID VARCHAR(50),
    Supplier_ID VARCHAR(50),
    Region VARCHAR(50),
    Units_Sold INT,
    Inventory_Level INT,
    Supplier_Lead_Time_Days INT,
    Reorder_Point INT,
    Order_Quantity INT,
    Unit_Cost DECIMAL(10, 2),
    Unit_Price DECIMAL(10, 2),
    Promotion_Flag TINYINT(1), -- 0 o 1
    Stockout_Flag TINYINT(1),  -- 0 o 1
    Demand_Forecast DECIMAL(10, 2),
    
    -- Columnas que generamos en el script de Python (Feature Engineering)
    Revenue DECIMAL(15, 2),
    Profit DECIMAL(15, 2),
    Forecast_Error DECIMAL(10, 2),
    ABS_Forecast_Error DECIMAL(10, 2),
    Inventory_Health VARCHAR(20),

    -- Índices para optimizar el rendimiento en Power BI
    INDEX idx_date (Date),
    INDEX idx_sku (SKU_ID),
    INDEX idx_region (Region)
);

-- 3. Verificación de la estructura
DESCRIBE processed_inventory_1;