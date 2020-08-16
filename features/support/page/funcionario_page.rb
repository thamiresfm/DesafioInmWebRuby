class FuncionarioPage
    include Capybara::DSL
    
    def initialize
        @search = "input[type='search']"
        @list = "tbody tr td"
        @button_delete = "#delete-btn"
    end
    def add
         click_link 'Novo Funcionário' 
    end

    def form
        AddFuncionario.new
        
    end

    def search(dado)
        find(@search).set dado
    end

    def list(dado)
        search(dado)
        find(@list).text 
    end

    # def delete
        
    # end
    # def has_no_movie(title)
    #     page.has_no_css?(@movie_list_css, text: title)
    #   end
    
    # def has_movie(title)
    #     page.has_css?(@movie_list_css, text: title)
    # end

end