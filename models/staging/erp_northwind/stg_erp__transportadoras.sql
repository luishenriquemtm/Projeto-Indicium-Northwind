with
    source_transportadoras as (
<<<<<<< HEAD
        select 
            cast (shipper_id as int) as id_transportadora					
            ,cast (company_name as string) as nome_do_transportadora					
            ,cast (phone as string) as telefone			
        from {{source('erp','shippers')}}
    )
=======
        select
            cast(shipper_id	as int) as id_transportadora
            , cast(company_name as string) as nome_transportadora
            , cast(phone as string) as telefone_transportadora
        from {{ source('erp', 'shippers') }}
    )

>>>>>>> e33304deede8814703167c7f809bedf8a9d6d2e9
select *
from source_transportadoras