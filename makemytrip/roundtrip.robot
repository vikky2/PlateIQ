*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.makemytrip.com/



*** Test Cases ***
Login_makemytrip
    open browser    ${url}  ${browser}
    maximize browser window

    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    set selenium implicit wait  20 seconds


    click element  xpath://li[@data-cy="account"]

    input text  id:username     testplateiq@gmail.com
    click button   xpath://button[@class="capText font16"]
    input text  id:password     test@123
    click button  xpath://button[@data-cy="login"]

    sleep  2

   # input text


    close browser


