*** Keywords ***
Verify number of items in cart
    [Arguments]     ${number_of_books}
    ${count}=   Get Element Count     xpath://div[@data-role="cart"]//div[contains(@class, "g-cart-item")]
    Should Be True  ${count} == ${number_of_books}
