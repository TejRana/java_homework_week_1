Feature: Demo Nopcommerce's topmenu acceptance criteria
  As a user, I would like to check acceptance criteria of nopcommerce topmenu
  Background: User is on given URL
    When   User type URL https://demo.nopcommerce.com
    And    User click on Enter button
    Then   User is on given URL

  Scenario: Verify that user can navigate to books category
    When   user i son given URL
    And    click on books tab on top menu
    Then   User is navigate to books category page

  Scenario: Verify that user can see the books category page with filters and list of products
    When   User is on given URL
    And    Clicks on book tab on top menu
    And    Check filters and List tab
    Then   Books category page displayed with filters and list tabs

  Scenario: Verify that user can see 'sort by' filter on book category page
    Given  User is on book category page
    When   User is on book category page
    And    Check 'sort by' filter is present
    Then   'Sort by' filter is available on book category page

  Scenario: Verify that user can see 'Display' filter on book category page
    Given  User is on book category page
    When   User is on book category page
    And    Check 'Display' filter is present
    Then   'Display' filter is available on book category page

  Scenario: Verify that user can see 'Grid' tab on book category page
    Given  User is on book category page
    When   User is on book category page
    And    Check 'Grid' tab is present
    Then   'Grid' tab is available on book category page

  Scenario: Verify that user can see 'List' tab on book category page
    Given  User is on book category page
    When   User is on book category page
    And    Check 'List' tab is present
    Then   'List' tab is available on book category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given  User is on book category page
    When   User is on book category page
    And    Click on 'Sort by' filter
    And    Check that 'Name: A to Z' selection is present
    Then   'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
    Given  User is on book category page
    When   User is on book category page
    And    Click on 'Sort by' filter
    And    Check that 'Name: A to Z' is first in order
    Then   'Name: A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expected(Note: products are filtered in alphabetical order)
    Given  User is on books category page
    When   User is on books category page
    And    Click on 'Sort by' filter
    And    Select 'Name: A to Z' filter
    Then   All product are displayed in alphabetical order

