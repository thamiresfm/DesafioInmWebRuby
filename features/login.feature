#language: pt

Funcionalidade: Login

  Para que eu possa gerenciar os cadastro de funcionarios 
  Sendo um usuário previamente cadastrado 
  Posso acessar o sistema com meu usuario e senha 

    @login_happy
    Cenario: Login realizado com sucesso

        Dado que eu esteja site Inmrobo
        Quando eu faço login com "thamires.mendes" e "thatha9897"
        Então devo ser autenticado

  
    Esquema do Cenario: Login não cadastrado

        Dado que eu esteja site Inmrobo
        Quando eu faço login com <usuario> e <senha>
        Então  não devo ser autenticado
        E devo ver a <mensagem> de erro 

        Exemplos:

            |usuario          |senha       |mensagem                            |
            |"thamires.mendes"|"pwd123"    |"ERRO! Usuário ou Senha inválidos"|
            |"tmendes"        |"thatha9897"|"ERRO! Usuário ou Senha inválidos"|
            |"tmendes"        |"pwd123"    |"ERRO! Usuário ou Senha inválidos"|
    @login_happless
    Esquema do Cenario: Login com campos em branco

        Dado que eu esteja site Inmrobo
        Quando eu faço login com <usuario> e <senha>
        Então  não devo ser autenticado
        E devo ver a <notificação> de erro no campo obrigatório

        Exemplos:

            |usuario          |senha       |notificação                            |
            |""               |""          |"Campo obrigatório"               |
            |""               |"thatha9897"|"Campo obrigatório"               |
            |"thamires.mendes"|""          |"Campo obrigatório"               |

