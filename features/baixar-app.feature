#language:pt
@app
Funcionalidade: Baixar app
    Para que eu possa utilizar o app como usuário comum
    Sendo alguém que possui uma conta no Google play ou App store
    Posso baixar o app pelo site

    Cenario: Baixar aplicativo 'Para você' para Android
        Quando eu visito a home page
        Dado que clico em "Baixe o app"
        E clico em "Android" na seção Para Você
        Então devo ver o título "PicPay: Pagamento online, Transferência e Compra" na Google Play

    Cenario: Baixar aplicativo 'Para você' para IOS
        Quando eu visito a home page
        Dado que clico em "Baixe o app"
        E clico em "iPhone" na seção Para Você
        Então devo ver o título "PicPay - Pagar e Receber Conta" na App Store

    Cenario: Baixar aplicativo 'Para empresas' para Android
        Quando eu visito a home page
        Dado que clico em "Baixe o app"
        E clico em "Android" na seção Para Empresas
        Então devo ver o título "PicPay Empresas" na Google Play

    Cenario: Baixar aplicativo 'Para empresas' para IOS
        Quando eu visito a home page
        Dado que clico em "Baixe o app"
        E clico em "iPhone" na seção Para Empresas
        Então devo ver o título "PicPay Empresas" na App Store