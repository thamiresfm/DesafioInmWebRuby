class Alert
    include Capybara::DSL
    def initialize
        @alert = ".alert"
    end

    def alert
         find(@alert).text
    end
end