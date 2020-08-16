class LoginPage
    include Capybara::DSL
  
    def initialize
      @input_username = "input[name=username]"
      @input_pass = "input[name=pass]"
      @logout  = "#logout"
      @btn_log_in = ".login100-form-btn"
      @alert_danger = ".alert-danger"
      @script_alert_attr = "$('.alert-validate').attr('data-validate')"
    end
  
    def go
      visit "/"
    end
    
    def with(username, pass)
      find(@input_username).set username
      find(@input_pass).set pass
      find(@btn_log_in).click
    end
  
    def has_css
      page.has_css?(@logout)
    end
  
    def has_no_css
      page.has_no_css?(@logout)
    end
  
    def alert_danger
      find(@alert_danger).text
    end
  
    def alert_validate
      find(@input_username).hover
      find(@input_pass).hover
      page.evaluate_script(@script_alert_attr);  
    end
  
  end