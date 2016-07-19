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
\timing

-- Statement 1 --
SELECT DISTINCT make_title --DISTINCT eliminates duplicate rows********
FROM car_models
WHERE make_code = 'LAM';
--//53.224 ms//--

-- Statement 2 --
SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN'
AND model_code = 'GT-R';
--//31.747 ms//--

-- Statement 3 --
pset;
SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';
--//30.097 ms//--

-- Statement 4 --





\c MatthewOlsen;