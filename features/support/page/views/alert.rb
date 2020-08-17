class Alert
    include Capybara::DSL
    def initialize
        @alert = ".alert"
        @script_alert_attr = "$('.alert-validate').attr('data-validate')"
    end

    def alert
         find(@alert).text
    end

    def alert_validate
        page.evaluate_script(@script_alert_attr);     
    end
end