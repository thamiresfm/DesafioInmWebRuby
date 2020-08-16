Dado("que eu esteja site Inmrobo") do
   @login_page.go
end
  
Quando("eu faço login com {string} e {string}") do |username, pass|
    @login_page.with(username, pass)
end
  
Então("devo ser autenticado") do   
    expect(@login_page.has_css).to be true
end

Então("não devo ser autenticado") do
    expect(@login_page.has_no_css).to be true
end

Então("devo ver a {string} de erro") do |msg|
    expect(@alert.alert).to include msg
end
  
Então("devo ver a {string} de erro no campo obrigatório") do |msg|
    expect(@login_page.alert_validate).to eql msg
end

  