  Feature: Bookcategory

  Background: I should be able to see homepage
  Given I enter URL" https://demo.nopcommerce.com/" in browser
  And   I am on home page

  Scenario Outline: I should be able to see top menu tabs on a homepage with categories
    When  I am on home page
    Then  I should be able to see top menu tabs with "<categories>"
  Examples:
  |categories           |
  |computer             |
  |Electronic           |
  |Apparel              |
  |Digital download     |
  |Books                |
  |jewellery            |
  |Gift card            |

  Scenario Outline: I should be able to see book page with filters
    When  I select book category from top menu tabs on home page
    Then  I should be navigated to book category
    And   I Should be able to see "<filters>"
    Examples:
    |filters      |
    |short by     |
    |Display      |
    |the Grid     |
    |List tab     |
  Scenario Outline: I should be able to see list of terms of each filter
    Given  I am on book page
    When   I click on "<filter>"
    Then   I should be able to see "<List>" in dropdown menu
  Examples:
    |filter         |List
    |sort by        |Name: A to z,name : Z to A, price : High to Low created
    |Display        | 3 , 6 , 9
  Scenario Outline: I should be able to choose any filter option with specific result
    Given  I am on book page
    When   I click on "<filter>"
    And    I click on any "<option>"
    Then   I should be able to choose any filter option from the List
    And    I should be able to see "<result>"
  Examples:
    |filter         |option                |result
    |Sort by        |Name:A to z           |sorted product with the product name in alphabet
    |Sort by        |Name:Z to A           |sorted product with the product in alphabet
    |Sort by        |price: low to high    |sorted product with the price in descending order
    |Sort by        |price: High to low    |Sorted product with the price in ascending order
    |Sort by        |Created on            |Recently Added product should be show first
    |Display        | 3                    | 3 products in a page
    |Display        | 6                    | 6 products in a page
    |Display        | 9                    | 9 products in a page
  Scenario Outline:  I should be able to see product display format according display format type
    Given   I am on book page
    When    I click on "<display format icon>"
    Then    I should be able to see product display format type as per given
  Examples:
    | display format icon  |
    | Grid                 |
    | List                 |