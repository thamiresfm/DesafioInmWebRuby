#language: pt

@login
Funcionalidade: Cadastro de funcionários

    Para que eu possa disponibilizar novos cadastros de funcionários
    Tendo um gestor de cadastro
    Posso cadastrar um novo filme

    @cadastro
    Esquema do Cenario: Novo funcionário cadastrado com sucesso
        O gestor de cadastro para cadastrar um novo funcionário através do formulário
        e um novo registro é inserido no sistema Inmrobo.
            
        Dado que <funcionario> é um novo funcionário
        Quando eu preencho o cadastro deste funcionário
        Então devo ver a <mensagem> de sucesso

        Exemplos:

            | funcionario                    |mensagem                                  |
            | "Claudia"                      |"SUCESSO! Usuário cadastrado com sucesso" |
            # | "Luis"                         |"SUCESSO! Usuário cadastrado com sucesso" |
            # | "Fabio"                        |"SUCESSO! Usuário cadastrado com sucesso" |
            # | "Fatima"                       |"SUCESSO! Usuário cadastrado com sucesso" |
            # | "Henrique"                     |"SUCESSO! Usuário cadastrado com sucesso" |
            # | "Cristina"                     |"SUCESSO! Usuário cadastrado com sucesso" |
           
     
   
    Esquema do Cenario: Cancelando o cadastro do funcionário
        O gestor de cadastro para cadastrar um novo funcionário através do formulário
        e não é encontrado registro no sistema Inmrobo.
            
            Dado que <funcionario> é um novo funcionário
            Quando eu preencho o cadastro deste funcionário
            Então devo ver a <mensagem> de insucesso

            Exemplos:

                | funcionario                    |mensagem                    |
                | "Carla"                        |"Nenhum registro encontrado"|

    @novo_funcionario
    Esquema do Cenario: Removendo um funcionário
        O gestor de cadastro para remover um funcionário através do formulário
        e não é encontrado registro no sistema Inmrobo.
            
            Dado que <funcionario> é um novo funcionário
            Quando eu preencho o cadastro deste funcionário
            E devo ver a mensagem de cadstro realizado com sucesso
            Então removo funcionário do cadastro
            E devo ver a <mensagem> de remoção com sucesso

            Exemplos:

                | funcionario                    |mensagem                                   |
                | "Raquel"                       |"SUCESSO! Funcionário removido com sucesso"|

     