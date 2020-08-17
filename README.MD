## Desafio Web

### Necessário instalar:

* Ruby for Windows versão (2.5 ou superior): linguagem de programação utilizada nos testes.
* Cmder for Windows: Sistema que trás as funcionalidades bash (Terminal) para o Windows.
* DevKit: Kit de ferramentas que o sistema operacional precisa para que o desenvolvimento funcione.
* Chromedriver: Driver do navegador que será utilizado na automação. Disponível no site do https://sites.google.com/a/chromium.org/chromedriver/downloads.
* GeckoDriver: Driver do navegador Firefox. Disponível no site https://github.com/mozilla/geckodriver/releases.

### Instalando Ruby
* Baixe em: http://rubyinstaller.org/downloads/.
* Executar o arquivo baixado e seguir as instruções clicando em ‘next’.
* Selecionar os 3 checkbox exibidos e continuar a dar ‘next’ até o ‘finish’.
* No Console do Cmder, digite o comando ruby –v , se a instalação estiver correta aparecerá a versão instalada.

### Instalando Devkit

* Baixe em (x86): https://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe.
* Baixe em (x64): http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe.
* Acesse o diretório C:\Ruby23-x64.
* Crie uma pasta chamada devkit e coloque o arquivo baixado dentro dessa pasta.
* Clique duas vezes no arquivo para que ele descompate os arquivos na pasta que foi criada.
* No Console do Cmder, digite os comandos:

`   cd/
    cd C:\Ruby23-x64\devkit
    ruby dk.rb init
    ruby dk.rb install
`

### Instalar o Bundler

No Console do Cmder, digite o comando:
`gem bundler install`

### Instalando o chromedriver e Geckodriver

* Baixe o chromedriver em: https://sites.google.com/a/chromium.org/chromedriver/downloads .

### Instalar as dependência do projeto

`bundler install`

### Execultar localmente 

`bundler exec cucumber`

### Execultando no servidor CI (Gerando reports JSON)

`bundler exec cucumber ci`
