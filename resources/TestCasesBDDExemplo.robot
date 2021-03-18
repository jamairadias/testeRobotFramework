*** Settings ***
Resource         base.robot    
Resource         BDDpt-br.robot    

***Test Cases***
Login com sucesso
    Dado que acesso a página de login
    Quando efetuo login     teste1@gmail.com     12345
    Então acesso a tela de boas vindas com o Logout Link

Senha incorreta
    Dado que acesso a página de login
    Quando efetuo login        teste1@gmail.com     54321
    Então exibe o alerta    Authentication failed.

Login incorreto
    Dado que acesso a página de login
    Quando efetuo login        teste@gmail.com     12345 
    Então exibe o alerta    Authentication failed.
    

Login em branco
    Dado que acesso a página de login
    Quando efetuo login       " "    12345  
    Então exibe o alerta    An email address required.  
       

Senha em branco
    Dado que acesso a página de login
    Quando efetuo login       teste1@gmail.com     " "
    Então exibe o alerta    Password is required.  
    

#Teste cujo resultado será falha
Mensagem errada Senha incorreta
    Dado que acesso a página de login
    Quando efetuo login       teste1@gmail.com    54321  
    Então exibe o alerta    Senha Incorreta. 