

WITH source_data AS (
    SELECT 
        "TEAMID",
  "TEAMNAME",
  "FILENAME",
  "LOAD_TIMESTAMP",
        CONVERT_TIMEZONE('UTC', CURRENT_TIMESTAMP())::TIMESTAMP_NTZ AS _inserted_at_
    FROM RAUNIT_T20_DBT.T20_RAW.TEAM
)

select * from source_data