require 'report_builder'

Before do
    #Pages
    @app_store_page = AppStorePage.new
    @google_play_page = GooglePlayPage.new
    @live_pp_qrcode_page = LivePPQRCodePage.new
    @pp_baixe_o_app_page = PicPayBaixeOAppPage.new
    @pp_home_page = PicPayHomePage.new
    @pp_sobre_nos_page = PicPaySobreNosPage.new

    #Maximizar
    #page.driver.browser.manage.window.maximize
    
    #Resize
    page.current_window.resize_to(1440,900)
end

After do |scenario|
    if scenario.failed?
        temp_shot = page.save_screenshot("log/temp_shot.png")
        screenshot = Base64.encode64(File.open(temp_shot,'rb').read)
        attach(screenshot,"image/png")
    end
end

at_exit do
    #Para report builder/Jenkins
    ReportBuilder.configure do |config|
        config.input_path = "log/report.json"
        config.report_path = "log/report"
        config.report_types = [:retry, :html]
        config.report_title = "PicPay"
        config.compress_image = true
        time = Time.new
        formatted_time = time.strftime ("%d/%m/%Y")
        config.additional_info = {"App" => "Web", "Data de execução" => formatted_time}
    end
    ReportBuilder.build_report
end