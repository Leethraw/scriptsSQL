use sucos_vendas;

-- Consultas na Tabela de Clientes --
select * from tabela_de_clientes;
select CPF,NOME from tabela_de_clientes;
select * from tabela_de_clientes where cpf = '1471156710';
select * from tabela_de_clientes where nome = 'Petra Oliveira' ;

-- Consulta onde vai aparecer todos os nomes que iniciam com a Letra P --
select * from tabela_de_clientes where nome like 'P%' ;

-- Consulta onde vai aparecer todos os nomes que terminam com a Letra A --
select * from tabela_de_clientes where nome like '%A' ;

-- Consulta onde vai aparecer todos os nomes que tem a Letra U em qualquer posição --
select * from tabela_de_clientes where nome like '%U%' ;

-- Consulta onde alteramos o nome de visualização de determinado campo na visualização final --
Select CPF as "Cadastro de Pessoa Física" from tabela_de_clientes;

-- Consultas na Tabela de Produtos --
select * from tabela_de_produtos;
select * from tabela_de_produtos where PRECO_DE_LISTA > 8.41 ;
select * from tabela_de_produtos where PRECO_DE_LISTA like '8.41' ;
select * from tabela_de_produtos where PRECO_DE_LISTA like '19%' ;
select * from tabela_de_produtos where PRECO_DE_LISTA between 8.40 and 8.42 ;

-- Consultas com as condicionais --
select * from tabela_de_produtos where
sabor = 'Manga' or tamanho = '350 ml';

select * from tabela_de_produtos where 
sabor = 'Manga' and tamanho = '350 ml';

select * from tabela_de_produtos where 
NOT (sabor = 'Manga' AND tamanho = '350 ml');

select * from tabela_de_produtos where 
NOT (sabor = 'Manga' OR tamanho = '350 ml');


-- Consulta das outras tabelas da Database sucos_vendas -- 
select * from itens_notas_fiscais;
select * from notas_fiscais;
select * from tabela_de_produtos;
select * from tabela_de_vendedores;