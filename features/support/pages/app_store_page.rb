class AppStorePage
    include Capybara::DSL

    def obter_titulo_AppStore()
        find('.app-header__title').text
    end
end