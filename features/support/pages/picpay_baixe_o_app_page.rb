class PicPayBaixeOAppPage
    include Capybara::DSL

    def para_voce(device)
        first('.cta').click_link(device)
    end

    def para_empresas(device)
        all('.cta').last.click_link(device)
    end
end