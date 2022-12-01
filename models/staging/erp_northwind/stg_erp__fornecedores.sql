with
<<<<<<< HEAD
    source_suppliers as (
        select 
            cast(supplier_id as int) as id_fornecedor			
            , cast(company_name as string) as nome_fornecedor
            , cast(contact_name as string) as contato_fornecedor
            , cast(contact_title as string) as titulo_de_cortesia_fornecedor
            , cast(address as string) as endereco_fornecedor
            , cast(postal_code as string) as cep_fornecedor
            , cast(city as string) as cidade_fornecedor
=======
    source_fornecedores as (
        select
            cast(supplier_id as int) id_fornecedor
            , cast(company_name	as string) as nome_do_fornecedor
            , cast(contact_name	as string) as contato_fornecedor
            , cast(contact_title as string) as titulo_de_cortesia_fornecedor
            , cast(address as string) as endereco_fornecedor
            , cast(postal_code as string) as cep_fornecedor
            , cast(city	as string) as cidade_fornecedor
>>>>>>> e33304deede8814703167c7f809bedf8a9d6d2e9
            , cast(region as string) as regiao_fornecedor
            , cast(country as string) as pais_fornecedor
            , cast(phone as string) as telefone_fornecedor
            , cast(fax as string) as fax_fornecedor
<<<<<<< HEAD
            --, cast(homepage as string) as site
        from {{source('erp', 'suppliers')}}
    )
select *
from source_suppliers
=======
            --, homepage
        from {{ source('erp', 'suppliers') }}
    )

select *
from source_fornecedores
>>>>>>> e33304deede8814703167c7f809bedf8a9d6d2e9
