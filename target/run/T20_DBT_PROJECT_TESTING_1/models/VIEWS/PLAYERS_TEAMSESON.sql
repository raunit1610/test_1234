
  create or replace   view RAUNIT_T20_DBT.T20_DATA_TRANSFORM.PLAYERS_TEAMSESON
  
  
  
  
  as (
    


    

        (
            select
                cast('RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_BRONZE_PLAYERSTATS' as TEXT) as source_layer,

                
                    cast("SEASON" as NUMBER(38,0)) as "SEASON" ,
                    cast("MATCHID" as NUMBER(38,0)) as "MATCHID" ,
                    cast("INNING" as NUMBER(38,0)) as "INNING" ,
                    cast("TEAMID" as NUMBER(38,0)) as "TEAMID" ,
                    cast("TEAMNAME" as character varying(16777216)) as "TEAMNAME" ,
                    cast("PLAYERID" as NUMBER(38,0)) as "PLAYERID" ,
                    cast("PLAYERNAME" as character varying(16777216)) as "PLAYERNAME" ,
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

        union all
        

        (
            select
                cast('RAUNIT_T20_DBT.T20_DATA_TRANSFORM.TeamSeason_9_11_25' as TEXT) as source_layer,

                
                    cast("SEASON" as NUMBER(38,0)) as "SEASON" ,
                    cast(null as NUMBER(38,0)) as "MATCHID" ,
                    cast(null as NUMBER(38,0)) as "INNING" ,
                    cast("TEAMID" as NUMBER(38,0)) as "TEAMID" ,
                    cast(null as character varying(16777216)) as "TEAMNAME" ,
                    cast(null as NUMBER(38,0)) as "PLAYERID" ,
                    cast(null as character varying(16777216)) as "PLAYERNAME" ,
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

            from RAUNIT_T20_DBT.T20_DATA_TRANSFORM.TeamSeason_9_11_25

            
        )

        
  );

