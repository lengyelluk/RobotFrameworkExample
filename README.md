# Basic example of Robot Framework test

### Goal
Automate a simple test of chosen book e-shop. Sort the items by price and add two items to the cart.

### Instructions
Clone the repo and run the test using command "robot add_items_to_cart_test.robot".
Prerequsites: python, pip, robot framework, robotframework-seleniumlibrary, webdrivermanager. 

### Project files
add_items_to_cart_test.robot - test suite verifying functionality of adding items to the cart
books-foreign-languages-page.robot & cart-page.robot - page objects of two parts of e-shop
navigation.robot - keywords related to navigation in e-shop
resources.robot - constants and variables 
system.robot - keywords related to test suite setup and teardown
