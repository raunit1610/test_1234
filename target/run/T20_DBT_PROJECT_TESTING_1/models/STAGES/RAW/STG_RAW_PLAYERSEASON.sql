-- back compat for old kwarg name
  
  begin;
    
        
            
                
                
            
                
                
            
        
    

    

    merge into RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_RAW_PLAYERSEASON as DBT_INTERNAL_DEST
        using RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_RAW_PLAYERSEASON__dbt_tmp as DBT_INTERNAL_SOURCE
        on (
                    DBT_INTERNAL_SOURCE.PLAYERID = DBT_INTERNAL_DEST.PLAYERID
                ) and (
                    DBT_INTERNAL_SOURCE.TEAMID = DBT_INTERNAL_DEST.TEAMID
                )

    
    when matched then update set
        "PLAYERID" = DBT_INTERNAL_SOURCE."PLAYERID","TEAMID" = DBT_INTERNAL_SOURCE."TEAMID","ABC" = DBT_INTERNAL_SOURCE."ABC","XYZ" = DBT_INTERNAL_SOURCE."XYZ","SEASON" = DBT_INTERNAL_SOURCE."SEASON","FILENAME" = DBT_INTERNAL_SOURCE."FILENAME","LOAD_TIMESTAMP" = DBT_INTERNAL_SOURCE."LOAD_TIMESTAMP","_INSERTED_AT_" = DBT_INTERNAL_SOURCE."_INSERTED_AT_"
    

    when not matched then insert
        ("PLAYERID", "TEAMID", "ABC", "XYZ", "SEASON", "FILENAME", "LOAD_TIMESTAMP", "_INSERTED_AT_")
    values
        ("PLAYERID", "TEAMID", "ABC", "XYZ", "SEASON", "FILENAME", "LOAD_TIMESTAMP", "_INSERTED_AT_")

;
    commit;