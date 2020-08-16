require "report_builder"
require "date"

Before do
  @login_page = LoginPage.new
  @funcionario_page = FuncionarioPage.new
  @alert = Alert.new
    
  # page.driver.browser.manage.window.maximize
    page.current_window.resize_to(1440, 900)
end

Before("@login") do
  user = CONFIG["users"]["cat_manager"]
  @login_page.go
  @login_page.with(user["email"], user["pass"])
end

d = DateTime.now
@current_date = d.to_s.tr(":","-")

After do |scenario|
    #if scenario.failed?
    temp_shot = page.save_screenshot("report/screenshots/temp_shot.png")
    screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
    embed(screenshot, "image/png", "Screenshot")
    #end
  end
  
at_exit do
    ReportBuilder.configure do |config|
      config.input_path = "report/report.json"
      config.report_path = "report/" + @current_date
      config.report_types = [:html]
      config.report_title = "Inmrobo"
      config.compress_image = true
      config.additional_info = { "App" => "Web", "Data de execução" => @current_date  }
      config.color = "indigo"
    end
    ReportBuilder.build_report
end