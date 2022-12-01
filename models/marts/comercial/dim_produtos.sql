with
<<<<<<< HEAD
    produtos as (
        select *
        from {{ref('stg_erp__produtos')}}
    ) 

    , categorias as (
        select *
        from {{ref('stg_erp__categorias')}}
    ) 

    , fornecedores as (
        select *
        from {{ref('stg_erp__fornecedores')}}
    ) 

    , joined_tabelas as (
        select
            produtos.id_produto			
            , produtos.id_fornecedor	
            , produtos.id_categoria
            , produtos.nome_produto
            , produtos.quantidade_por_unidade			
            , produtos.preco_por_unidade		
            , produtos.unidade_no_estoque			
            , produtos.unidades_por_ordem		
            , produtos.nivel_reabastecimento
            , produtos.is_discontinuado
            , categorias.nome_categoria				
            , categorias.descricao_categoria
	        , fornecedores.nome_fornecedor
=======
    categorias as (
        select *		
        from {{ ref('stg_erp__categorias') }}
    )

    , produtos as (
        select *		
        from {{ ref('stg_erp__produtos') }}
    )

    , fornecedores as (
        select *		
        from {{ ref('stg_erp__fornecedores') }}
    )

    , uniao_tabelas as (
        select
            produtos.id_produto
            , produtos.id_fornecedor	
            , produtos.id_categoria	
            , produtos.nome_produto			
            , produtos.quantidade_por_unidade
            , produtos.preco_por_unidade
            , produtos.unidades_em_estoque		
            , produtos.unidades_por_ordem			
            , produtos.nivel_reabastecimento		
            , produtos.is_discontinuado
            , categorias.nome_categoria			
            , categorias.descricao_categoria
            , fornecedores.nome_do_fornecedor
>>>>>>> e33304deede8814703167c7f809bedf8a9d6d2e9
            , fornecedores.contato_fornecedor
            , fornecedores.titulo_de_cortesia_fornecedor
            , fornecedores.endereco_fornecedor
            , fornecedores.cep_fornecedor
            , fornecedores.cidade_fornecedor
            , fornecedores.regiao_fornecedor
            , fornecedores.pais_fornecedor
<<<<<<< HEAD
            , fornecedores.telefone_fornecedor
            , fornecedores.fax_fornecedor
            
        from produtos
        left join categorias on produtos.id_categoria = categorias.id_categoria
        left join fornecedores on produtos.id_fornecedor = fornecedores.id_fornecedor

=======
            , fornecedores.fax_fornecedor
            , fornecedores.telefone_fornecedor
        from produtos
        left join categorias on produtos.id_categoria = categorias.id_categoria
        left join fornecedores on produtos.id_fornecedor = fornecedores.id_fornecedor
>>>>>>> e33304deede8814703167c7f809bedf8a9d6d2e9
    )

    , transformacoes as (
        select
<<<<<<< HEAD
            row_number() over(order by id_produto) as sk_produto
            , *
        from joined_tabelas
=======
            row_number() over (order by id_produto) as sk_produto
            , *
        from uniao_tabelas
>>>>>>> e33304deede8814703167c7f809bedf8a9d6d2e9
    )

select *
from transformacoes