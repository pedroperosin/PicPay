class GooglePlayPage
    include Capybara::DSL

    def obter_titulo_GPlay()
        find('h1[itemprop="name"]').text
    end
end