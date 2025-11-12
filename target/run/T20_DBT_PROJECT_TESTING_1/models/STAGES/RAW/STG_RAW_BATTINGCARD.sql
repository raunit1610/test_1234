
  
    

create or replace transient table RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_RAW_BATTINGCARD
    
    
    
    as (

WITH source_data AS (
    SELECT 
        "MATCHID",
  "INNINGID",
  "PLAYORDER",
  "BATSMANID",
  "DISMISSALTYPEID",
  "BOWLERID",
  "FIELDERID",
  "RUNS",
  "BALLS",
  "BOUNDERIES",
  "SIXES",
  "DOTSBALLS",
  "FILENAME",
  "LOAD_TIMESTAMP",
        CONVERT_TIMEZONE('UTC', CURRENT_TIMESTAMP())::TIMESTAMP_NTZ AS _inserted_at_
    FROM RAUNIT_T20_DBT.T20_RAW.BATTINGSCORECARD
)

SELECT *
FROM source_data


    )
;


  