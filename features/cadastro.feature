#language: pt

Funcionalidade: Cadastro

  Para que eu possa gerenciar os cadastro de funcionarios 
  È necessário realizar o cadastro para login
  

    @cadastro_happy
    Cenario: cadastro de login realizado com sucesso

        Dado que eu esteja site Inmrobo
        E acesso o cadastro
        Quando preencho campo de "Renata Campos" , "pw12987" e "pw12987"
        Então devo realizar o login com "Renata Campos" , "pw12987" com sucesso

    
    Esquema do Cenario: Cadastro de login realizado sem sucesso

        Dado que eu esteja site Inmrobo
        E acesso o cadastro
        Quando preencho campo de <usuario> , <senha> e <confirmaSenha>
        Então devo ver a <mensagem> campos obrigatório

        Exemplos:

            |usuario           |senha       | confirmaSenha       |mensagem              |
            |"Roberta da Silva"|""          |"pwd123"             |"Campo obigatório"    |
            |""                |"thatha9897"|"thatha9897"         |"Campo obrigatório"   |
            |"Rosa Clara"      |"pwd123"    |""                   |"Campo obigatório"    |

    
    Esquema do Cenario: Login já cadastrado

        Dado que eu esteja site Inmrobo
        E acesso o cadastro
        Quando preencho campo de "thamires.mendes" , "thatha9897" e "thatha9897"
        Então devo ver a mensagem "Usuário já cadastrado"
