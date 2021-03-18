***Settings***
Documentation       Ações da funcionalidade de autorização/autenticação

***Keywords***
Open Login Page
    New Browser     ${browser}        ${headless}
    New Page        http://automationpractice.com/index.php?controller=authentication&back=my-account  

Login With
    [Arguments]     ${email_arg}    ${pass_arg}

    Fill Text       id=email            ${email_arg}
    Fill Text       id=passwd           ${pass_arg}
    
    Click           id=SubmitLogin

Alert Should Be 
    [Arguments]     ${expect_arg}   

    Get Text        css=.alert.alert-danger     contains        ${expect_arg} 

Logout Link
    Wait For Elements State     css=a[href$=mylogout]   visible     10
