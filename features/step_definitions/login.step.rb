Dado('que o usuario queira se logar') do
  login.load 
end

Quando('ele digitar as credenciais validas') do
  login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Entao('deve acessar o site com sucesso') do
  home.checkLoginSuccess
end

Quando('ele digitar as credenciais invalidas') do
  login.userLogin(CREDENTIAL[:invalid_user][:email], CREDENTIAL[:invalid_user][:password])
end

Entao('deve exibir uma mensagem de erro') do
  login.checkLoginError
end
