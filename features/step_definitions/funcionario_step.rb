Dado("que {string} é um novo funcionário") do |funcionario_code|
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/funcionario.yaml"))
    @funcionario = file[funcionario_code]
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
Quando("devo ver a mensagem de cadstro realizado com sucesso") do
    @funcionario_page.form.sucess_or_cancel("sucess")
end
  
Quando("removo funcionário do cadastro") do
    # teste = @funcionario_page.list(@funcionario["cpf"])
    # puts teste
end  

Então("devo ver a {string} de remoção com sucesso") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

