WITH combined AS (
    

        (
            select
                cast('RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_RAW_PLAYER' as TEXT) as source_layer,

                
                    cast("PLAYERID" as NUMBER(38,0)) as "PLAYERID" ,
                    cast("PLAYERNAME" as character varying(16777216)) as "PLAYERNAME" ,
                    cast("FILENAME" as character varying(16777216)) as "FILENAME" ,
                    cast("LOAD_TIMESTAMP" as TIMESTAMP_NTZ) as "LOAD_TIMESTAMP" ,
                    cast("_INSERTED_AT_" as TIMESTAMP_NTZ) as "_INSERTED_AT_" ,
                    cast(null as NUMBER(38,0)) as "SEASON" ,
                    cast(null as NUMBER(38,0)) as "MATCHID" ,
                    cast(null as NUMBER(38,0)) as "INNING" ,
                    cast(null as NUMBER(38,0)) as "TEAMID" ,
                    cast(null as character varying(16777216)) as "TEAMNAME" ,
                    cast(null as NUMBER(38,0)) as "PLAYERORDER" ,
                    cast(null as NUMBER(38,0)) as "RUNS_MADE" ,
                    cast(null as NUMBER(38,0)) as "BALLS_PLAYED" ,
                    cast(null as NUMBER(38,0)) as "FOURS_HITTEN" ,
                    cast(null as NUMBER(38,0)) as "SIXES_HITTEN" ,
                    cast(null as NUMBER(38,0)) as "DOTBALLS_PLAYED" ,
                    cast(null as NUMBER(38,0)) as "BOWLS_BOWLED" ,
                    cast(null as NUMBER(38,0)) as "MAIDEN_TAKEN" ,
                    cast(null as NUMBER(38,0)) as "DOTSBALLS_THROWN" ,
                    cast(null as NUMBER(38,0)) as "RUNS_GIVEN" ,
                    cast(null as NUMBER(38,0)) as "BOUNDERIES_CONCEDED" ,
                    cast(null as NUMBER(38,0)) as "SIXES_CONCEDED" ,
                    cast(null as NUMBER(38,0)) as "NOBALLS_GIVEN" ,
                    cast(null as NUMBER(38,0)) as "WIDES_GIVEN" ,
                    cast(null as NUMBER(38,0)) as "WICKETS_TAKEN" ,
                    cast(null as TIMESTAMP_NTZ) as "INSERTED_AT" ,
                    cast(null as NUMBER(18,0)) as "RN" 

            from RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_RAW_PLAYER

            
        )

        union all
        

        (
            select
                cast('RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_BRONZE_PLAYERSTATS' as TEXT) as source_layer,

                
                    cast("PLAYERID" as NUMBER(38,0)) as "PLAYERID" ,
                    cast("PLAYERNAME" as character varying(16777216)) as "PLAYERNAME" ,
                    cast(null as character varying(16777216)) as "FILENAME" ,
                    cast(null as TIMESTAMP_NTZ) as "LOAD_TIMESTAMP" ,
                    cast(null as TIMESTAMP_NTZ) as "_INSERTED_AT_" ,
                    cast("SEASON" as NUMBER(38,0)) as "SEASON" ,
                    cast("MATCHID" as NUMBER(38,0)) as "MATCHID" ,
                    cast("INNING" as NUMBER(38,0)) as "INNING" ,
                    cast("TEAMID" as NUMBER(38,0)) as "TEAMID" ,
                    cast("TEAMNAME" as character varying(16777216)) as "TEAMNAME" ,
                    cast("PLAYERORDER" as NUMBER(38,0)) as "PLAYERORDER" ,
                    cast("RUNS_MADE" as NUMBER(38,0)) as "RUNS_MADE" ,
                    cast("BALLS_PLAYED" as NUMBER(38,0)) as "BALLS_PLAYED" ,
                    cast("FOURS_HITTEN" as NUMBER(38,0)) as "FOURS_HITTEN" ,
                    cast("SIXES_HITTEN" as NUMBER(38,0)) as "SIXES_HITTEN" ,
                    cast("DOTBALLS_PLAYED" as NUMBER(38,0)) as "DOTBALLS_PLAYED" ,
                    cast("BOWLS_BOWLED" as NUMBER(38,0)) as "BOWLS_BOWLED" ,
                    cast("MAIDEN_TAKEN" as NUMBER(38,0)) as "MAIDEN_TAKEN" ,
                    cast("DOTSBALLS_THROWN" as NUMBER(38,0)) as "DOTSBALLS_THROWN" ,
                    cast("RUNS_GIVEN" as NUMBER(38,0)) as "RUNS_GIVEN" ,
                    cast("BOUNDERIES_CONCEDED" as NUMBER(38,0)) as "BOUNDERIES_CONCEDED" ,
                    cast("SIXES_CONCEDED" as NUMBER(38,0)) as "SIXES_CONCEDED" ,
                    cast("NOBALLS_GIVEN" as NUMBER(38,0)) as "NOBALLS_GIVEN" ,
                    cast("WIDES_GIVEN" as NUMBER(38,0)) as "WIDES_GIVEN" ,
                    cast("WICKETS_TAKEN" as NUMBER(38,0)) as "WICKETS_TAKEN" ,
                    cast("INSERTED_AT" as TIMESTAMP_NTZ) as "INSERTED_AT" ,
                    cast("RN" as NUMBER(18,0)) as "RN" 

            from RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_BRONZE_PLAYERSTATS

            
        )

        
),
matched AS (
    SELECT 
        PLAYERID,
        COUNT(DISTINCT source_layer) AS layer_count
    FROM combined
    GROUP BY PLAYERID
)
SELECT 
    PLAYERID
FROM matched
WHERE layer_count < 2