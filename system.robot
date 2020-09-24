*** Keywords ***
Open Favourite e-shop
    Open Browser  ${BaseURL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  ${Delay}
    Set Selenium Timeout    ${Timeout}

Close GDPR Popup
    ${isPopupPresent}=     Run keyword And Return Status    Wait Until Page Contains Element    //div[contains(@class, 'gdpr-headerr')]    timeout=10   error=false
    ${isPopupPresent}    Click Element   xpath://div[@data-consent-type="marketing"]//button[@data-consent-types="marketing"]

Exit Test
    Capture Page Screenshot
    Close Browser