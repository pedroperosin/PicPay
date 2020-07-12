class LivePPQRCodePage
    include Capybara::DSL

    def focar()
        window = page.driver.browser.window_handles
        page.driver.browser.switch_to.window(window.last)
    end

    def gerar_QRCode(user)
        find('input[placeholder="Exemplo: @MeuUsuário"]').set user
        find('#btSubmit').click
    end

    def usuario_gerado()
        displayed_username = find('.userName').text
    end
end