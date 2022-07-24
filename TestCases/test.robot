*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
   # create webdriver    chrome    executable_path="C:\Users\sunny\Downloads\chromedriver_win32\chromedriver.exe"
    LogintoApplication
    click link    xpath://a[@class='ico-login']
    input text    xpath://input[@class='email']     sunny250389@gmail.com
    input text    xpath://input[@class='password']      Synch@77
    click link      xpath://button[@class="button-1 login-button"]
    close browser

*** Keywords ***
LogintoApplication
    open browser    ${url}   ${browser}
