# PicPay
Projeto para processo Especialista Qualidade de Software

===== Projeto de automação PicPay ======

OS: Windows 10 PRO (64 bits)

Browser: Google Chrome 83.0.4103.116 (64 bits)

Projeto de automação de testes construído utilizando o framework Capybara+Cucumber+Rspec em Ruby.

Report construído com a utilização da gem 'report_builder' disponível após execução em: ./log/report.html


---Pre-requisitos: 
1) Ruby >= 2.5.0
2) Chromedriver compatível com a versão do Chrome


---Instruções:
1) Instalar o Ruby: https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.6.6-1/rubyinstaller-devkit-2.6.6-1-x64.exe

2) Instalar o ChromeDriver compatível com a versão do Chrome: https://chromedriver.chromium.org/downloads

3) Importante garantir que tanto os executáveis do Ruby e do Chromedriver estejam em diretórios do PATH, ou então, incluí-los no PATH

4) Baixar/Clonar o projeto

5) Através do console, navegar até a raiz do projeto, e digitar os comandos:
gem install bundler
bundle install

6) Para rodar o projeto, através do console, navegar até a raiz do projeto, e digitar o comando:
cucumber

7) Para verificar os resultados, o report ficará disponível em ./log/report.html
