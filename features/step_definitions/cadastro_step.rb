Dado("acesso o cadastro") do
  @cadastro_page.add
end

Quando("preencho campo de {string} , {string} e {string}") do |username, pass, confirm_pass|
  @cadastro_page.with(username, pass, confirm_pass)

end

Então("devo realizar o {string} , {string} com sucesso") do |username, pass|
  steps %{
    Dado que eu esteja site Inmrobo
    Quando eu faço login com "#{username}" e "#{pass}"
    Então devo ser autenticado
  }
end

Então("devo ver a {string} campos obrigatório") do |msg|
   expect(@alert.alert_validate).to eql msg
end