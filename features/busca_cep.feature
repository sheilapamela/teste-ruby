#language: pt
 
Funcionalidade: Consulta de CEP
   Sendo uma empresa que atua no Brasil
   Pode consultar o CEP do endereço diversos lugares
   Para que consiga utilizar esses dados em seus sistemas
 
Cenário: CEP válido retornando o código do IBGE
   Dado que eu quero consultar um CEP na API
   Quando faço uma requisição de consulta de um CEP válido
   Então o código do IBGE será "3550308"
 
Cenário: CEP inválido
   Dado que eu quero consultar um CEP na API
   Quando faço uma requisição de consulta de um CEP inválido
   Então vejo a mensagem "erro"