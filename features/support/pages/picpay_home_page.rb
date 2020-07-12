class PicPayHomePage
    include Capybara::DSL

    def ir
        visit "/site"
    end

    def ir_para(page)
        click_link page
    end

end