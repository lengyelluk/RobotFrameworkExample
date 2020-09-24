*** Keywords ***
Sort Items By Price Descending
    Wait Until Element is Visible   xpath://h1[text()="Cudzojazyčná literatúra"]
    Scroll Element Into View    xpath://select[@data-role="vb-list-ordering"]
    Select From List By Value   xpath://select[@data-role="vb-list-ordering"]   price desc

Add Book By Index To Cart
    [Arguments]     ${book_index}
    Scroll Element Into View    xpath:(//div[@class='item'])[${book_index}]//div[contains(@class, 'vb-cart-box hidden-xs')]//button[@data-action='buy']
    Click Element   xpath:(//div[@class='item'])[${book_index}]//div[contains(@class, 'vb-cart-box hidden-xs')]//button[@data-action='buy']
    Wait Until Element is Visible   xpath://div[@data-role="cart-popover"]
    Click Element   xpath://div[@data-role="cart-popover"]//button[@class="close"]

