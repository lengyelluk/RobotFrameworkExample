*** Keywords ***
Sort Items By Price Descending
    Wait Until Element is Visible   xpath://h1[text()="Cudzojazyčná literatúra"]
    Wait Until Element is Visible   css:div.g-recommendation
    Select From List By Value   xpath://select[@data-role="vb-list-ordering"]   price desc

Add Book By Index To Cart
    [Arguments]     ${book_index}
    Wait Until Element is Visible    xpath:(//div[@class='item'])[${book_index}]//div[contains(@class, 'vb-cart-box hidden-xs')]//button[@data-action='buy']
    Click Element   xpath:(//div[@class='item'])[${book_index}]//div[contains(@class, 'vb-cart-box hidden-xs')]//button[@data-action='buy']
    Wait Until Element is Visible   xpath://div[@data-role="cart-popover"]
    Click Element   xpath://div[@data-role="cart-popover"]//button[@class="close"]
    Wait Until Element is Not Visible    xpath://div[contains(@class, "modal-backdrop fade")]