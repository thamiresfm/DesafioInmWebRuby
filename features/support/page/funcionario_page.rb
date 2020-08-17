class FuncionarioPage
    include Capybara::DSL
    
    def initialize
        @search = "input[type='search']"
        @list = "tbody tr td"
        @button_delete = "#delete-btn"
        @button_edit = "a button .fa-pencil"
        @notification_Required_field = "div[data-validate='Campo obrigatório']"
        
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

    def list(cpf, nome)
           
        if cpf == nil
            search(nome)  
        else
             search(cpf)  
        end
        
         find(@list).text 
    end

    def valid_register_sem_sucesso(dados)
        form.sucess_or_cancel("sucess")
        click_link "Funcionários"
        list(dados["cpf"], dados["nome"])    
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