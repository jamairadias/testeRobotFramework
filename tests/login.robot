***Settings***
Documentation   Testes da página login

Library     Browser


Resource    ../resources/base.robot


#Gancho para tirar print após a execução de cada teste
Test Teardown   Take Screenshot

***Test Cases***
Login com sucesso
    Open Login Page
    Login With      teste1@gmail.com     12345
    Logout Link

Senha incorreta
    Open Login Page
    Login With          teste1@gmail.com     54321
    Alert Should Be     Authentication failed.

Login incorreto
    Open Login Page
    Login With          teste@gmail.com     12345  
    Alert Should Be     Authentication failed.

Login em branco
    Open Login Page
    Login With          ${EMPTY}     12345  
    Alert Should Be     An email address required.        

Senha em branco
    Open Login Page
    Login With          teste1@gmail.com     ${EMPTY}   
    Alert Should Be     Password is required.    

#Teste cujo resultado será falha
Mensagem errada Senha incorreta
    Open Login Page
    Login With          teste1@gmail.com    54321
    Alert Should Be     Senha Incorreta.


