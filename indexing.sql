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


\c andrew;