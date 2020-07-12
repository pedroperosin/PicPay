 #language:pt
@form
Funcionalidade: Formulário de contato
    Para que eu possa entrar em contato via formulário
    Sendo um interessado em contato com o PicPay
    Posso preencher e enviar o formulário

    Esquema do Cenario: Enviar formulário de contato com sucesso
        Quando eu visito a página sobre-nós
        Dado que clico na seção "Contato"
        Então devo preencher o formulário com os dados em <codigo>
        E não devo enviar, pois é apenas um exemplo

            Exemplos:
                | codigo        |
                | "Completo"    |

    Esquema do Cenario: Validar Formulário de contato sem sucesso
        Quando eu visito a página sobre-nós
        Dado que clico na seção "Contato"
        Então devo preencher o formulário com os dados em <codigo>
        E devo clicar em Enviar
        Então devo ver as mensagens de erro "Ops, ocorreu algum erro." e "Campo incorreto ou inválido."

            Exemplos:
                | codigo             |
                |"Sem nome"          |
                |"Sem email"         |
                |"Sem telefone"      |
                |"Sem interesse"     |
                |"Sem assunto"       |
                |"Sem mensagem"      |
                |"Telefone incorreto"|
                |"Email incorreto"   |