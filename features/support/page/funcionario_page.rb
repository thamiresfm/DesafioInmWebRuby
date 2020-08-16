class FuncionarioPage
    include Capybara::DSL
    
    def initialize
        @search = "input[type='search']"
        @list = "tbody tr td"
        @button_delete = "#delete-btn"
        @button_edit = "a button .fa-pencil"
        
    end
    def file(dado)
        file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/funcionario.yaml"))
        file[dado]
    end
    def add
         click_link "Novo Funcionário" 
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

    def delete(dado)
        search(dado)
        first(@button_delete).click 
    end

    def edit(dado,alteracao_code)
        search(dado)
        first(@button_edit).click
        form.create_funcionario(file(alteracao_code))
        form.sucess_or_cancel("sucess")
    end

end