Dado("que {string} é um novo funcionário") do |funcionario_code|   
    @funcionario = @funcionario_page.file(funcionario_code)
end
  
Quando("eu preencho o cadastro deste funcionário") do
    @funcionario_page.add
    @funcionario_page.form.create_funcionario(@funcionario)
end
  
Então("devo ver a {string} de sucesso") do |msg|
    @funcionario_page.form.sucess_or_cancel("sucess")
    expect(@alert.alert).to include msg
end

Quando("devo ver a {string} de insucesso") do |msg|
    @funcionario_page.form.sucess_or_cancel("failure")
    expect(@funcionario_page.list(@funcionario["cpf"])).to eql msg
end
Quando("devo ver a mensagem de cadastro realizado com sucesso") do
    @funcionario_page.form.sucess_or_cancel("sucess")
end
  
Quando("removo funcionário do cadastro") do
    @funcionario_page.delete(@funcionario["cpf"])  
end  

Então("devo ver a {string} de remoção com sucesso") do |msg|
    expect(@alert.alert).to include msg
end

Então("altero {string} do funcionário do cadastro") do |alteracao_code|
    @funcionario_page.edit(@funcionario["cpf"], alteracao_code)   
end
  
Então("devo ver a {string} de alteração realizada com sucesso") do |msg|
    expect(@alert.alert).to include msg
end