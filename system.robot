*** Keywords ***
Go To Favourite e-shop
    Open Browser  ${BaseURL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  ${Delay}

Close GDPR consent
    Click Element   xpath://div[@data-consent-type="marketing"]//button[@data-consent-types="marketing"]

Exit Test
    Capture Page Screenshot
    Close Browser