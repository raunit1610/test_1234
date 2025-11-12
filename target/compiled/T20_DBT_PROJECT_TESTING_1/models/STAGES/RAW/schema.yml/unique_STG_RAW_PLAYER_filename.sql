
    
    

select
    filename as unique_field,
    count(*) as n_records

from RAUNIT_T20_DBT.T20_DATA_TRANSFORM.STG_RAW_PLAYER
where filename is not null
group by filename
having count(*) > 1


