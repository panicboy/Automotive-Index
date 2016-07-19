DROP ROLE IF EXISTS indexed_cars_user;
CREATE ROLE indexed_cars_user;
DROP DATABASE IF EXISTS indexed_cars;
CREATE DATABASE indexed_cars;
ALTER DATABASE indexed_cars OWNER TO indexed_cars_user;
\c indexed_cars;
\i scripts/car_models.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
SELECT COUNT(*) FROM car_models;

\echo 1.
SELECT DISTINCT make_title
  FROM car_models
  WHERE make_code = 'LAM';
  -- 22.103 ms / 1.706 ms

\echo 2.
SELECT DISTINCT model_title
  FROM car_models
  WHERE make_code = 'NISSAN'
  AND model_code = 'GT-R';
  -- Time: 24.449 ms / 0.600 ms

\echo 3.
\pset pager off
SELECT make_code, model_code, model_title, year
  FROM car_models
  WHERE make_code = 'LAM';
  -- Time: 25.442 ms / 2.933 ms

\echo 4.
SELECT make_code, model_code, year
  FROM car_models
  WHERE year BETWEEN 2010 AND 2015;
  -- Time: 162.042 ms / 159.004 ms / 88.357 ms / 63.189 ms / 47.377 ms

\echo 5.
SELECT *
  FROM car_models
  WHERE year = 2010;
  -- Time: 46.585 ms



\c andrew;