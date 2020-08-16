Dado("que eu esteja site Inmrobo") do
   @login.go
end
  
Quando("eu faço login com {string} e {string}") do |username, pass|
    @login.with(username, pass)
end
  
Então("devo ser autenticado") do   
    expect(@login.has_css).to be true
end

Então("não devo ser autenticado") do
    expect(@login.has_no_css).to be true
end

Então("devo ver a mensagem de {string}") do |msg|
    expect(@login.alert_danger).to include msg
end
  
Então("devo ver a notificação de {string}") do |msg|
    expect(@login.alert_validate).to eql msg
end

  