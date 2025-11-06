class HomePage < SitePrism::Page
    element :myIcon, :xpath, '//*[@id="ember16"]/span'
    element :navInicio, :xpath, '//*[@id="global-nav"]/div/nav/ul/li[1]/a/span'

    def checkLoginSuccess
        expect(myIcon.text).to eql "Eu"
        expect(navInicio.text).to eql "Início"
    end
end