class PicPaySobreNosPage
    include Capybara::DSL

    def ir
        visit "/site/sobre-nos"
    end

    def ir_para_secao(section)
        find('.about-slider__nav-menu li', text:section).click
        sleep 2
    end

    def selecionar_card_sobre(index)
        find("#slick-slide-control0#{index-1}").click
        sleep 2
    end

    def validar_imagem(index)
        begin
            within("div[class='slick-slide slick-current slick-active'][aria-hidden='false'][id='slick-slide0#{index-1}']") do
                @slider_img_src = find('.mock-image')[:src]
            end        
        rescue Exception => e
            #retry no botão do slide control
            puts(e.message)
            @pp_sobre_nos_page.selecionar_card_sobre(index)
            within("div[class='slick-slide slick-current slick-active'][aria-hidden='false'][id='slick-slide0#{index-1}']") do
                @slider_img_src = find('.mock-image')[:src]
            end
        end
        @slider_img_src
    end

    def proxima_frase_imprensa()
        sleep 2
        find('.fa-chevron-right').click
        sleep 2
    end

    def validar_imprensa()
        within('.press') do
            within('div[class="slick-slide slick-current slick-active"][aria-hidden="false"]') do
                @press_text = find('h1').text
            end
        end
        @press_text
    end    

    def validar_titulo_contato()
        texto = find('.contact__header').text
    end
    
    def verificar_status_secao(section)
        class_status = find('.about-slider__nav-menu li', text:section)[:class]
    end

    def preencher_form(contact_data)
        find('input[name="name"]').set contact_data['nome']
        find('input[name="email"]').set contact_data['email']
        find('input[name="telephone"]').set contact_data['telefone']
        find('input[name="subject"]').set contact_data['assunto']
        find('textarea[name="message"]').set contact_data['mensagem']

        begin
            dropdown = find('#interest')
            dropdown.find('option', text: contact_data['interesse']).select_option
        rescue Exception => e
            #parametro em branco
        end
        sleep 2
    end
    
    def enviar_form()
        click_button 'Enviar'
    end

    def validar_msg_erro()
        msg = find('.invalid-fields').text
    end
end