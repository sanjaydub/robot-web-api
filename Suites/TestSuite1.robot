*** Settings ***
#Documentation    Suite description
Resource   ../Imports/Global_Imports.robot
Library     RequestsLibrary
#Library     Collections



*** Test Cases ***
Test DUCK DUCK GO
    [Tags]    Duck
    Log     "Hello"
    should be lowercase     hello
    Open Browser    https://duckduckgo.com      chrome
    Maximize Browser Window
    Input Text      search_form_input_homepage   "Robot Framework"      clear=True
    Press Keys      search_form_input_homepage      RETURN

    ${count} =	SeleniumLibrary.Get Element Count	//div[@class='results--main']
    Should Be True	${count} ==1

    Click Element   //div[@class='results--main']/div[@id='links']/div[1]//a[@class='result__url js-result-extras-url']

Request Git hub via REST service
    [Tags]    REST
    Create Session      github      https://api.github.com

    ${resp}=	Get Request     github      /users/sanjaydub
    log     ${resp)
    Should Be Equal As Strings	    ${resp.status_code}	    200
    ${respText}     Set Variable    ${resp.text}
    log     ${respText}
    log dictionary     ${resp.json()}

    ${getRepos}=	Get Request     github      /users/sanjaydub/repos
    log     ${getRepos.json()}
    ${resDict}     to Json     ${getRepos.text}
    log dictionary  ${resDict[0]}
    Get Length     ${resDict}
    ${fullNames}     get value from json     ${resDict}     $..full_name
    log     ${fullNames}

    Verify JSON Node value      ${resDict}     $..full_name     1   sanjaydub/firstrepo

    Verify JSON Node value      ${resDict}     $..full_name     0   sanjaydub/firstrepo


