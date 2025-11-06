#language: pt

Funcionalidade: Login com sucesso
Como um usuario valido
Eu quero logar no sistema
Para acessar minhas funcionalidades

Contexto: usuario valido quer acessar o sistema
    Dado que o usuario queira se logar

  Cenario: Login com sucesso
    Quando ele digitar as credenciais validas
    Entao deve acessar o site com sucesso

  Cenario: Login com credenciais invalidas
    Quando ele digitar as credenciais invalidas
    Entao deve exibir uma mensagem de erro