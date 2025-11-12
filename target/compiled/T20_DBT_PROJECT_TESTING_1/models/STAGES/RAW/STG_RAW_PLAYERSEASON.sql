

WITH source_data AS (
    SELECT
        "PLAYERID",
  "TEAMID",
  "SEASON",
  "FILENAME",
  "LOAD_TIMESTAMP",
        NULL AS abc,
        NULL AS xyz,
        NULL AS kfc,
        NULL AS hfc,
        CONVERT_TIMEZONE('UTC', CURRENT_TIMESTAMP())::TIMESTAMP_NTZ AS _inserted_at_
    FROM RAUNIT_T20_DBT.T20_RAW.PLAYERSEASON
),

deduped AS (
    SELECT
        PLAYERID,
        TEAMID,
        ANY_VALUE(abc) AS ABC,
        ANY_VALUE(xyz) AS XYZ,
        ANY_VALUE(kfc) AS KFC,
        ANY_VALUE(HFC) AS HFC,
        ANY_VALUE(SEASON) AS SEASON,
        ANY_VALUE(FILENAME) AS FILENAME,
        ANY_VALUE(LOAD_TIMESTAMP) AS LOAD_TIMESTAMP,
        MAX(_inserted_at_) AS _inserted_at_
    FROM source_data
    GROUP BY PLAYERID, TEAMID
)

SELECT *
FROM deduped


  WHERE _inserted_at_ > (SELECT MAX(_inserted_at_) FROM RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_RAW_PLAYERSEASON)
