-- back compat for old kwarg name
  
  begin;
    
        
            
	    
	    
            
        
    

    

    merge into RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_RAW_TEAM as DBT_INTERNAL_DEST
        using RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_RAW_TEAM__dbt_tmp as DBT_INTERNAL_SOURCE
        on ((DBT_INTERNAL_SOURCE.TEAMID = DBT_INTERNAL_DEST.TEAMID))

    
    when matched then update set
        "TEAMID" = DBT_INTERNAL_SOURCE."TEAMID","TEAMNAME" = DBT_INTERNAL_SOURCE."TEAMNAME","FILENAME" = DBT_INTERNAL_SOURCE."FILENAME","LOAD_TIMESTAMP" = DBT_INTERNAL_SOURCE."LOAD_TIMESTAMP","_INSERTED_AT_" = DBT_INTERNAL_SOURCE."_INSERTED_AT_"
    

    when not matched then insert
        ("TEAMID", "TEAMNAME", "FILENAME", "LOAD_TIMESTAMP", "_INSERTED_AT_")
    values
        ("TEAMID", "TEAMNAME", "FILENAME", "LOAD_TIMESTAMP", "_INSERTED_AT_")

;
    commit;