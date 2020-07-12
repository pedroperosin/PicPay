#language:pt
@page
Funcionalidade: Validacao da página
    Para que eu possa garantir a consistência da página
    Sendo um visitante da página
    Posso validar as informações

    Esquema do Cenario: Validar Títulos
        Quando eu visito a home page
        Então devo ver o <titulo> sendo exibido

        Exemplos:
            | titulo     |
            |"Pagar e receber ficou mais fácil\ndo que enviar mensagem."  |
            |"PicPay.\nÉ mais que dinheiro."                              |
            |"Saiba tudo o que o PicPay pode fazer por você."             |
            |"Pagar sua parte do churrasco ficou mais fácil."             |
            |"Precisa parcelar um boleto?\nChega mais."                   |
            |"Faça recarga de celular, transporte e muito mais."          |
            |"Deixe a carteira em casa."                                  |
            |"Quer guardar dinheiro?\nAqui ele rende mais que a poupança."|

    Cenario: Validar sessão Sobre
        Quando eu visito a página sobre-nós
        Dado que clico na seção "Sobre"
        Então no primeiro item devo ver a imagem "about1.png"
        E ao clicar no segundo item, devo ver a imagem "about2.png"
        E ao clicar no terceiro item, devo ver a imagem "about3.png"
        E o botão "Sobre" deve estar visualmente selecionado

    Cenario: Validar sessão Imprensa
        Quando eu visito a página sobre-nós
        Dado que clico na seção "Imprensa"
        Então devo ver a frase "Fintech quer triplicar de tamanho até 2020" exibida no slider
        Então devo clicar na seta para ver a próxima frase
        E devo ver a frase "“PicPay deve contratar 800" exibida no slider
        E o botão "Imprensa" deve estar visualmente selecionado

    Cenario: Validar sessão Contato
        Quando eu visito a página sobre-nós
        Dado que clico na seção "Contato"
        Então devo ver a frase "Fala com a gente ;)" no titulo da seção contato
        E o botão "Contato" deve estar visualmente selecionado
