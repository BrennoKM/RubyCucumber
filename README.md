# RubyCucumber

Automação de testes para o sistema utilizando **Cucumber**, **Ruby**, **Capybara**, **SitePrism** e **Selenium WebDriver**.

## 🔹 Estrutura do Projeto

```
.  
├── cucumber.yml  
├── features  
│ ├── bdd # Features escritas em Gherkin  
│ │ └── login.feature  
│ ├── pages # Page Objects usando SitePrism  
│ │ ├── home.page.rb  
│ │ └── login.pages.rb  
│ ├── step_definitions # Step definitions do Cucumber  
│ │ └── login.step.rb  
│ └── support # Arquivos de suporte  
│ ├── credential.rb  
│ ├── env.rb  
│ ├── hooks.rb  
│ └── page.initialize.rb  
├── Gemfile # Gems do projeto  
├── Gemfile.lock  
├── README.md  
└── relatorio.html # Relatório gerado após execução

````

## 🔹 Pré-requisitos

- Ruby >= 3.4  
- Bundler  
- Chrome ou outro navegador compatível com Selenium WebDriver  

## 🔹 Instalação

1. Clone o repositório:

```bash
git clone https://github.com/BrennoKM/RubyCucumber.git
cd RubyCucumber
````

2. Instale as dependências do projeto:
    

```bash
bundle install
```

3. Crie um arquivo `.env` na raiz do projeto para configurar suas credenciais e URL do ambiente:
    

```env
USER_EMAIL=correct@email.com
USER_PASSWORD=correctpassword
INVALID_EMAIL=invalid@example.com
INVALID_PASSWORD=wrongpass
```

## 🔹 Executando os testes

Para rodar um profile específico (ex.: `prod`):

```bash
bundle exec cucumber -p prod
```

Para gerar relatórios dos testes use:

```bash
bundle exec cucumber -p prod --format html --out=relatorio.html
```

> O profile `prod` deve estar configurado no `cucumber.yml`.

## 🔹 Estrutura do Page Object

Foi usado **SitePrism** para organizar as páginas:

- `login.pages.rb` → Comandos e elementos da página de login
    
- `home.page.rb` → Comandos e elementos da página inicial

## 🔹 Relatórios

Após execução, é gerado um relatório em `relatorio.html`.  
Você pode abrir no navegador para visualizar o status dos testes.  

## 🔹 Tecnologias Utilizadas

- Ruby
- Cucumber
- Capybara
- Selenium WebDriver
- SitePrism
- RSpec
- Dotenv
    
