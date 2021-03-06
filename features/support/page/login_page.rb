class LoginPage
    include Capybara::DSL
  
    def initialize
      @input_username = "input[name=username]"
      @input_pass = "input[name=pass]"
      @logout  = "#logout"
      @script_alert_attr = "$('.alert-validate').attr('data-validate')"
    end
  
    def go
      visit "/"
    end
    
    def with(username, pass)
      find(@input_username).set username
      find(@input_pass).set pass
      hover
      click_button "Entre"
      
    end
  
    def has_css
      page.has_css?(@logout)
    end
  
    def has_no_css
      page.has_no_css?(@logout)
    end
  
    def hover
      find(@input_username).hover
      find(@input_pass).hover
    end
  end