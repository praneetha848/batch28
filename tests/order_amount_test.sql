
select
    id,
    full_name,
    email
    spent
from {{ source('datafeed_public_schema','customers' )}}
where spent <0
