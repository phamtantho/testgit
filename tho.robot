*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary
*** Variables ***
${remote_url}   http://10.102.1.102:4444/wd/hub

${CAP_WINDOWS}    platform:WINDOWS
${CAP_MAC}        platform:MAC

${CAP_CHROME}    browserName:chrome
${CAP_FIREFOX}   browserName:firefox
${CAP_EDGE}      browserName:MicrosoftEdge 
${CAP_SAFARI}    browserName:safari

*** Test Cases ***
Test1
    [Tags]    sanity   win   chrome
    Open Browser    http://demo.guru99.com/test/newtours/index.php     browser=chrome   remote_url=${remote_url}    desired_capabilities=${CAP_WINDOWS},${CAP_CHROME}
    Title Should Be    Welcome: Mercury Tours
    Maximize Browser Window
    Log To Console    Register an account
    Click Element    link=REGISTER
    Input Text    name=firstName    Tho
    Input Text    name=lastName    Pham
    Input Text    name=phone    0908224292
    Input Text    id=userName    pttho@tma.com.vn
    Input Text    name=address1    111 Nguyen Dinh Chinh, P15
    Input Text    name=city    PN
    Input Text    name=state    HCM
    Input Text    name=postalCode    9999
    Select From List By Value    name=country    VIETNAM
    Input Text    name=email    Tho
    Input Password    name=password    123456
    Input Password    name=confirmPassword    123456
    Click Button    name=submit
    Wait Until Page Contains    Thank you for registering    10s
	
Test2
    [Tags]    sanity   win   firefox
    Log To Console    Open page https://www.google.com/ with browser firefox
    Open Browser    https://www.google.com/    browser=firefox   remote_url=${remote_url}   desired_capabilities=${CAP_WINDOWS},${CAP_FIREFOX}
    Input Text    name=q    robot framework
    Press Key    name=q    \\13
    Wait Until Page Contains Element    link=Robot Framework   10s
    Click Link    link=Robot Framework
    Log To Console   Successfully opened page
	
Test3
    [Tags]    sanity   win   edge
    Log To Console    Open page https://www.google.com/ with browser edge
    Open Browser    https://www.google.com/    browser=edge   remote_url=${remote_url}    desired_capabilities=${CAP_WINDOWS},${CAP_EDGE}
    Input Text    name=q    robot framework
    Press Key    name=q    \\13
    Wait Until Page Contains Element    link=Robot Framework   10s
    Click Link    link=Robot Framework
    Log To Console    Successfully opened page
	
Test4
    [Tags]    sanity   mac   chrome
    Open Browser    http://demo.guru99.com/test/newtours/index.php     browser=chrome   remote_url=${remote_url}    desired_capabilities=${CAP_MAC},${CAP_CHROME}
    Title Should Be    Welcome: Mercury Tours
    Maximize Browser Window
    Log To Console    Register an account
    Click Element    link=REGISTER
    Input Text    name=firstName    Tho
    Input Text    name=lastName    Pham
    Input Text    name=phone    0908224292
    Input Text    id=userName    pttho@tma.com.vn
    Input Text    name=address1    111 Nguyen Dinh Chinh, P15
    Input Text    name=city    PN
    Input Text    name=state    HCM
    Input Text    name=postalCode    9999
    Select From List By Value    name=country    VIETNAM
    Input Text    name=email    Tho
    Input Password    name=password    123456
    Input Password    name=confirmPassword    123456
    Click Button    name=submit
    Wait Until Page Contains    Thank you for registering    10s
	
Test5
    [Tags]    sanity   mac   firefox
    Log To Console    Open page https://www.google.com/ with browser firefox
    Open Browser    https://www.google.com/    browser=firefox   remote_url=${remote_url}   desired_capabilities=${CAP_MAC},${CAP_FIREFOX}
    Input Text    name=q    robot framework
    Press Key    name=q    \\13
    Wait Until Page Contains Element    link=Robot Framework   10s
    Click Link    link=Robot Framework
    Log To Console   Successfully opened page
	
Test6
    [Tags]    sanity   mac   safari
    Log To Console    Open page https://www.google.com/ with browser safari
    Open Browser    https://www.google.com/    browser=safari   remote_url=${remote_url}    desired_capabilities=${CAP_MAC},${CAP_SAFARI}
    Input Text    name=q    robot framework
    Press Key    name=q    \\13
	Wait Until Page Contains Element    link=Robot Framework   10s
	Click Link    link=Robot Framework
    Log To Console    Successfully opened page
