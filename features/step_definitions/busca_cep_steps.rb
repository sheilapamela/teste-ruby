Dado("que eu quero consultar um CEP na API") do
    @uri = "https://viacep.com.br/ws/"
end
  
Quando("faço uma requisição de consulta de um CEP válido") do
    @response = HTTParty.get(@uri + "01001000/json/")
end
  
Então("o código do IBGE será {string}") do |ibge_code|
    ibge_code = "3550308"
    expect(@response.code).to eql 200
    expect(@response.message).to eql "OK"
    expect(@response["ibge"]).to eql ibge_code
end
  
Quando("faço uma requisição de consulta de um CEP inválido") do
    @response = HTTParty.get(@uri + "00000000/json/")
end
  
Então("vejo a mensagem {string}") do |mensagem|
    mensagem = true
    expect(@response.code).to eql 200
    expect(@response.message).to eql "OK"
    expect(@response["erro"]).to eql mensagem
 end