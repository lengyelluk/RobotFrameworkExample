*** Keywords ***
Navigate to Books Biographies
    Click Element   xpath://span[@data-popover="department-popover__knihy"]
    Wait Until Element is Visible   xpath://h2/a[text()="Knihy"]/../following-sibling::ul//a[text()="Cudzojazyčná literatúra"]
    Click Element   xpath://h2/a[text()="Knihy"]/../following-sibling::ul//a[text()="Cudzojazyčná literatúra"]

Navigate to Cart
    Click Element   xpath://a[contains(@class, "cart")]