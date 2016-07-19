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
SELECT DISTINCT make_title, now()
  FROM car_models
  WHERE make_code = 'LAM';

\echo 2.
SELECT DISTINCT model_title, now()
  FROM car_models
  WHERE make_code = 'NISSAN'
  AND model_code = 'GT-R';

\echo 3.
\pset pager off
SELECT make_code, model_code, model_title, year, now()
  FROM car_models
  WHERE make_code = 'LAM';
  -- GROUP BY model_code, model_title, year
  -- ORDER BY model_code, model_title, year;

\echo 4.
SELECT *, now()
  FROM car_models
  WHERE year BETWEEN 2010 AND 2015;


\c andrew;