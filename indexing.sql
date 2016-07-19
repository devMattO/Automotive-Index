DROP DATABASE IF EXISTS indexed_cars;
DROP USER IF EXISTS indexed_cars_user;

CREATE USER indexed_cars_user;
CREATE DATABASE indexed_cars OWNER indexed_cars_user;

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
-----for loop for sql?

SELECT COUNT (*)
FROM car_models;

SELECT DISTINCT make_title --DISTINCT eliminates duplicate rows********
FROM car_models
WHERE make_code = 'LAM';



\c MatthewOlsen;