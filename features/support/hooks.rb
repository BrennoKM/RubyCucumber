Before do
    Capybara.page.driver.browser.manage.window.maximize
    puts "\tIniciando o teste"
end

After do
    puts "\tTeste finalizado"
end