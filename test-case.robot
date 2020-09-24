*** Settings ***
Library  SeleniumLibrary

Resource  resources.robot
Resource  system.robot
Resource  navigation.robot
Resource  books-foreign-languages-page.robot
Resource  cart-page.robot

Suite Setup  Run Keywords  Go To Favourite e-shop  Close GDPR consent
Suite Teardown  Run Keywords  Exit Test

*** Test Cases ***
Add two most expensive items to the cart
  Navigate to Books Biographies
  Sort Items By Price Descending
  Add Book By Index To Cart     book_index=1
  Add Book By Index To Cart     book_index=2
  Navigate to Cart
  Verify number of items in cart    number_of_books=2
