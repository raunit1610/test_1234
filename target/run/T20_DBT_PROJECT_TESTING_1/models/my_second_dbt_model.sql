
  create or replace   view RAUNIT_T20_DBT.T20_DATA_TRANSFORM.my_second_dbt_model
  
  
  
  
  as (
    select *
  from RAUNIT_T20_DBT.T20_DATA_TRANSFORM.my_first_dbt_model
  where id = 1
  );

