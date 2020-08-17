#language: pt

@login
Funcionalidade: Cadastro de login

    Para que eu possa disponibilizar novos cadastros de funcionários
    Sendo um gestor de cadastro
    Devo cadastrar um novo funcionário

  
    Esquema do Cenario: Novo funcionário cadastrado com sucesso
        O gestor de cadastro para cadastrar um novo funcionário através do formulário
        e um novo registro é inserido no sistema Inmrobo.
            
        Dado que <funcionario> é um novo funcionário
        Quando eu preencho o cadastro deste funcionário
        Então devo ver a <mensagem> de sucesso

        Exemplos:

            | funcionario                    |mensagem                                  |
            | "Claudia"                      |"SUCESSO! Usuário cadastrado com sucesso" |
            | "Fabio"                        |"SUCESSO! Usuário cadastrado com sucesso" |
            | "Fatima"                       |"SUCESSO! Usuário cadastrado com sucesso" |
            | "Henrique"                     |"SUCESSO! Usuário cadastrado com sucesso" |
            | "Cristina"                     |"SUCESSO! Usuário cadastrado com sucesso" |

      
       Esquema do Cenario: Novo funcionário cadastrado com campo em branco
        O gestor de cadastro cadastrar um novo funcionário através do formulário sem sucesso
        e um registro não será inserido no sistema Inmrobo.
            
        Dado que <funcionario> é um novo funcionário
        Quando eu preencho o cadastro deste funcionário
        Então não devo encontrar dados no campo de busca e ver a <mensagem>

        Exemplos:

            | funcionario |mensagem                    |
            | "Diego"     |"Nenhum registro encontrado"|                 
            | "Bruno"     |"Nenhum registro encontrado"|                  
            | "Fabiola"   |"Nenhum registro encontrado"|                                   
            | "Paulo"     |"Nenhum registro encontrado"|  
    
    Esquema do Cenario: Cancelando o cadastro do funcionário
        O gestor de cadastro para cadastrar um novo funcionário através do formulário
        e não é encontrado registro no sistema Inmrobo.
            
            Dado que <funcionario> é um novo funcionário
            Quando eu preencho o cadastro deste funcionário
            Então devo ver a <mensagem> de insucesso

            Exemplos:

                | funcionario                    |mensagem                    |
                | "Carla"                        |"Nenhum registro encontrado"|

    
    Esquema do Cenario: Removendo um cadastro do funcionário
        O gestor de cadastro para remover um funcionário através do formulário
        e não é encontrado registro no sistema Inmrobo.
            
            Dado que <funcionario> é um novo funcionário
            Quando eu preencho o cadastro deste funcionário
            E devo ver a mensagem de cadastro realizado com sucesso
            Então removo funcionário do cadastro
            E devo ver a <mensagem> de remoção com sucesso

            Exemplos:

                | funcionario                    |mensagem                                   |
                | "Raquel"                       |"SUCESSO! Funcionário removido com sucesso"|

   
    Esquema do Cenario: Alterando um cadastro do funcionário
        O gestor de cadastro para alterar um funcionário através do formulário
         e a ateração é realizada registro do sistema Inmrobo.
            
            Dado que <funcionario> é um novo funcionário
            Quando eu preencho o cadastro deste funcionário
            E devo ver a mensagem de cadastro realizado com sucesso
            Então altero <dado> do funcionário do cadastro
            E devo ver a <mensagem> de alteração realizada com sucesso

            Exemplos:

                | funcionario     |mensagem                                      |dado            |
                | "Luis"          |"SUCESSO! Informações atualizadas com sucesso"|"Luis_alteracao"|

