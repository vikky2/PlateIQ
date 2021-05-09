*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.makemytrip.com/



*** Test Cases ***
FlightSearch
    open browser    ${url}  ${browser}
    maximize browser window

    set selenium implicit wait      10 seconds


    double click element  xpath://li[@data-cy="roundTrip"]

    click element  xpath://label[@for="fromCity"]
    input text  xpath://input[@placeholder="From"]       Goa
    sleep  2
    click element  xpath://li[@id="react-autowhatever-1-section-0-item-0"]

    #click element  xpath://label[@for="toCity"]
    input text     xpath://input[@placeholder="To"]      Bombay
    click element  xpath://li[@data-suggestion-index="0"]

    click element  xpath://div[@aria-label="Tue May 11 2021"]

    click element  xpath://div[@aria-label="Wed May 12 2021"]

    click element  xpath://div[@data-cy="flightTraveller"]
    click element  xpath://li[@data-cy="adults-1"]
    click element  xpath://li[@data-cy="children-1"]
    click element  xpath://li[@data-cy="travelClass-0"]
    click button  xpath://button[@data-cy="travellerApplyBtn"]


    click link      xpath://a[@class="primaryBtn font24 latoBold widgetSearchBtn "]



    double click element  xpath://span[contains(text(),'21:40')]
    sleep  2




    click element  xpath://button[@class="splitFooterButton button buttonPrimary buttonBig "]




    close browser




