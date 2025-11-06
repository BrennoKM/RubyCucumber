class LoginPage < SitePrism::Page

    set_url '/login/pt'
    element :username_field, :id, "username"
    element :password_field, :id, "password"
    element :login_button, :xpath, '//*[@id="organic-div"]/form/div[4]/button'
    element :login_error_message, :id,  'error-for-password'

    def userLogin (email, password)
        username_field.set (email)
        password_field.set (password)
        login_button.click
    end

    def checkLoginError
        expect(login_error_message.text).to include "E-mail ou senha incorreta."
    end

end