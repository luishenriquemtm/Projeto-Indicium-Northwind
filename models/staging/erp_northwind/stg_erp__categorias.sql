<<<<<<< HEAD
-- É de boa prática usar CTE
with
    source_categories as (
        select 
            cast (category_id as int) as id_categoria		
            , cast (category_name as string) as nome_categoria				
            , cast (description	as string) as descricao_categoria		
          --, picture		
        from {{source('erp','categories')}}
    )
select *
from source_categories 
=======
with
    source_categories as (
        select
            cast(category_id as int) as id_categoria				
            , cast(category_name as string) as nome_categoria			
            , cast(description as string) as descricao_categoria		
            --, picture
        from {{ source('erp', 'categories') }}
    )

select *
from source_categories
>>>>>>> e33304deede8814703167c7f809bedf8a9d6d2e9
