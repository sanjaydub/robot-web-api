*** Keywords ***
First keyword
    Do something

Verify JSON Node value
    [Arguments]     ${jsonObj}      ${jsonPath}     ${index}    ${expValue}

    ${actVals}     get value from json     ${jsonObj}     ${jsonPath}
    Should be equal     ${actVals}[${index}]    ${expValue}

