class AddFuncionario
    include Capybara::DSL

    def initialize
        @input_name = "#inputNome"
        @input_cpf = "#cpf"
        @select_sex = "#slctSexo"
        @select_sex_option ="#{@select_sex} option"
        @input_admission = "#inputAdmissao"
        @input_office = "#inputCargo"
        @input_salary = "#dinheiro"
        @button_register = ".cadastrar-form-btn"
        @button_cancel = ".cancelar-form-btn"
      
    end

    def create_funcionario(funcionario)
        find(@input_name).set funcionario["nome"]
        find(@input_cpf).set funcionario["cpf"]
        select_sex(funcionario["sexo"]) unless funcionario["sexo"].empty?
        find(@input_admission).set funcionario["admissao"] 
        find(@input_office).set funcionario["cargo"] 
        find(@input_salary).set funcionario["salario"]
        choose funcionario["tipo_de_Contratacao"]
    
    end

    def sucess_or_cancel(valor)
        case valor
        when "sucess"
            find(@button_register).click
        else
            find(@button_cancel).click
        end
    end


    def select_sex(sex)
        find(@select_sex).click
        find( @select_sex_option, text: sex).click
    end

end