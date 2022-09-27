with raw_hosts as(

select * from AIRBNB.RAW.RAW_HOSTS

)

select

    id as hosts_id,
    name as hosts_name,
    is_superhost, 
    created_at,
    updated_at 

from raw_hosts