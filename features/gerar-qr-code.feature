#language:pt
@qrcode
Funcionalidade: Gerar QR Code
    Para que eu possa receber doações
    Sendo alguém que pretende fazer uma live
    Posso gerar um QRCode para meu perfil do PicPay

    Cenario: Validar geração do QR Code
        Quando eu visito a home page
        Dado que clico em "Gerador de QR Code"
        E preencho o usuário "@pedroperosin" e clico em Baixar meu QR Code
        Então devo ver o usuário "@pedroperosin" abaixo do QR Code gerado