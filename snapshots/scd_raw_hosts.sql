{% snapshot scd_raw_hosts %}

{{

    config(
        target_schema='snapshot',
        unique_key='id',
        strategy='timestamp',
        updated_at='updated_at'
    )

}}

select * from {{ source('airbnb','hosts') }}

{% endsnapshot %}