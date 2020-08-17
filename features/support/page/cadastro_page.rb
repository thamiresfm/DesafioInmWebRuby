class CadastroPage
    include Capybara::DSL
  
    def initialize
      @input_username = "input[name=username]"
      @input_pass = "input[name=pass]"
      @confirm_pass = "input[name=confirmpass]"
      @logout  = "#logout"
      @script_alert_attr = "$('.alert-validate').attr('data-validate')"
      @button_regist = '.txt2'
    end
  
    def add
        first(@button_regist).click
    end
    
    def with(username, pass, confirm_pass)
      find(@input_username).set username
      find(@input_pass).set pass
      find(@confirm_pass).set confirm_pass
      hover
      click_button "Cadastrar"
    end

  
    def hover
      find(@input_username).hover
      find(@input_pass).hover
      find(@confirm_pass).hover
    end
  end