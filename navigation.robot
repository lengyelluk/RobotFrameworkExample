*** Keywords ***
Navigate to Books Biographies
    Navigate to Books
    Wait Until Element is Visible   xpath://h2/a[text()="Knihy"]/../following-sibling::ul//a[text()="Cudzojazyčná literatúra"]
    Click Element   xpath://h2/a[text()="Knihy"]/../following-sibling::ul//a[text()="Cudzojazyčná literatúra"]

Navigate to Books
    Wait Until Element is Visible   xpath://span[@data-popover="department-popover__knihy"]
    Mouse Over   xpath://span[@data-popover="department-popover__knihy"]

Navigate to Cart
    Click Element   xpath://a[contains(@class, "cart")]