
{% snapshot  snap_customers_timestamp %}

{{
    config(
      strategy='timestamp',
      unique_key='id',
      updated_at='load_at',
      invalidate_hard_deletes=True   
    )
}}
select * 
from {{source('datafeed_public_schema','customers')}}

{% endsnapshot %}
