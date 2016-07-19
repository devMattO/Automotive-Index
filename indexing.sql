\timing
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


-- Statement 1 --
CREATE INDEX make_title_index
  ON car_models (make_title);

SELECT DISTINCT make_title --DISTINCT eliminates duplicate rows********
FROM car_models
WHERE make_code = 'LAM';
--//53.224 ms//-- before including index
--//33.412 ms//-- after including index

-- Statement 2 --
CREATE INDEX model_title_index
ON car_models (model_title);

CREATE INDEX make_code_index
ON car_models (make_code);

CREATE INDEX model_code_index
ON car_models (model_code);

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN'
AND model_code = 'GT-R';
--//31.747 ms//-- before including index
--//1.630 ms//--  after including index

-- Statement 3 --
CREATE INDEX year_index
ON car_models (year);

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';
--//30.097 ms//-- before including index
--//1.679 ms//--  after including index

-- Statement 4 --
SELECT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;
--//101.142 ms//-- before including index
--//94.948 ms//--  after including index

--Statement 5 --
SELECT *
FROM car_models
WHERE year = 2010;
--//48.790 ms//-- before including index
--//19.775 ms//-- after including index

\timing
\c MatthewOlsen;