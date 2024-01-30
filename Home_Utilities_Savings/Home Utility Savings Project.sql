--Utilities Data

CREATE DATABASE utilities_data;
USE utilities_data;

--DROP DATABASE utilities_data;

--Create Utilities data table

CREATE TABLE Utilities(
    Year INT,
    Month VARCHAR(20),
    ElectricityUsage REAL,
    WaterUsage REAL,
    ElectricityBill FLOAT,
    WaterBill FLOAT,
    TotalBill FLOAT,
    PRIMARY KEY(Year, Month)
);

--DROP TABLE Utilities;

--Inputting 2022 & 2023 data values
INSERT INTO Utilities(Year, Month, ElectricityUsage, WaterUsage)
VALUES
    ('2022', 'Jul', '1028', '23.1'),
    ('2022', 'Aug', '1291', '30.9'),
    ('2022', 'Sep', '979', '29.9'),
    ('2022', 'Oct', '1063', '35.1'),
    ('2022', 'Nov', '1130', '36.9'),
    ('2022', 'Dec', '1050', '34.8'),
    ('2023', 'Jan', '836', '41.0'),
    ('2023', 'Feb', '829', '-3.4'),
    ('2023', 'Mar', '801', '17.3'),
    ('2023', 'Apr', '709', '9.7'),
    ('2023', 'May', '874', '15.6'),
    ('2023', 'Jun', '1486', '26.3'),
    ('2023', 'Jul', '1218', '21.6'),
    ('2023', 'Aug', '838', '13.1'),
    ('2023', 'Sep', '1112', '18.8'),
    ('2023', 'Oct', '1588', '32.9'),
    ('2023', 'Nov', '1329', '25.4'),
    ('2023', 'Dec', '1071', '20.6');

--Formulas for electricity and water bill based on respective rates/charges
UPDATE Utilities
SET
    ElectricityBill = ElectricityUsage * 0.2862,
    WaterBill = (WaterUsage*1.21) + (WaterUsage*0.92) + (WaterUsage*1.21*0.5),
    TotalBill = ElectricityBill + WaterBill;

ALTER TABLE Utilities
MODIFY COLUMN Month ENUM('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec') NOT NULL;

SELECT * FROM Utilities;



-- --Singapore Weather Data

-- CREATE DATABASE SG_weather_data;
-- USE SG_weather_data;

-- CREATE TABLE Weather(
--     Year INT,
--     Month VARCHAR(20),
--     MeanTemp FLOAT,
--     AvgMonthlyTotalRainfall FLOAT,
--     Humidity FLOAT,
--     PRIMARY KEY(Year, Month)
-- );

-- INSERT INTO TABLE Weather(Year, Month, MeanTemp, AvgMonthlyTotalRainfall, Humidity)
-- VALUES
--     ('2022','Jan','27.2','150', '77.9'),
--     ('2022','Feb','27.3','220', ''),
--     ('2022','Mar','28.1','315', ),
--     ('2022','Apr','28.1','250', ),
--     ('2022','May','29.2','210', ),
--     ('2022','Jun','27.9','225', ),
--     ('2022','Jul','28.6','125', ),
--     ('2022','Aug','28.1','240', ),
--     ('2022','Sep','27.9','245', ),
--     ('2022','Oct','27.6','415', ),
--     ('2022','Nov','27.4','385', ),
--     ('2022','Dec','26.7','250', ),
--     ('2023','Jan','26.3','', '84.6'),
--     ('2023','Feb','26.6','', '83.0'),
--     ('2023','Mar','26.8','', '82.7'),
--     ('2023','Apr','28.2','', '81.3'),
--     ('2023','May','29.2','', '78.5'),
--     ('2023','Jun','28.7','', '79.7'),
--     ('2023','Jul','28.4','', '80.4'),
--     ('2023','Aug','28.6','', '78.6'),
--     ('2023','Sep','28.7','', '77.2'),
--     ('2023','Oct','29.0','', '76.5'),
--     ('2023','Nov','27.8','', '82.0'),
--     ('2023','Dec','27.3','', '85.2'),