# ITS project 1
# Author: Ondrej Jakub Chromy (xchromo00)

Feature: Managing customer information

  Background:
    Given the user is logged in as administrator
    And the user is on Customers page

  Scenario: Enable customer adding mode
    When "Add" button is pressed
    Then customer's details fields are fillable
    And the "Add" button changes to "Save" button

  Scenario: Disable customer adding mode
    When "Cancel" button is pressed
    Then customer adding mode is disabled
    And the "Save" button changes to "Add" button

  Scenario Outline: Trying to add customer with unspecified required information
    Given customer adding mode is enabled
    And <field> text field is empty
    When the user presses "Save" button
    Then <field> text field indicates missing information
    And message "Fields with * are required." is displayed

    Examples:
        | field        |
        | First Name   |
        | Last Name    |
        | Email        |
        | Phone Number |

  Scenario: Adding new customer
    Given customer adding mode is enabled
    And required customer information fields are filled
    When "Save" button is pressed
    Then customer adding mode is disabled
    And newly added customer is shown in customers list

  Scenario: Showing deleting customer pop-up
    Given a customer exists in "Customers" list
    And the customer is selected
    When "Delete" button is pressed
    Then "Delete Customer" pop-up is shown

  Scenario: Deleting customer
    Given customer exists
    And "Delete Customer" pop-up is shown
    When "Delete" button is pressed
    Then the customer is not showing in customers list

  Scenario: Enabling customer edit mode
    Given a customer exists in "Customers" list
    And the customer is selected
    When "Edit" button is pressed
    Then the customer's details are editable
    And the "Add" button changes to "Save" button

  Scenario: Disabling customer edit mode
    Given a customer's details are editable
    When "Cancel" button is pressed
    Then the customer's details are not editable

  Scenario Outline: Editing customer information
    Given a customer's details are editable
    When the user edits <field>
    And "Save" button is pressed
    Then the customer's details are not editable
    And the customer's details contain edited <field> information

    Examples:
      | field        |
      | First Name   |
      | Last Name    |
      | Email        |
      | Phone Number |
      | Address      |
      | City         |
      | Zip Code     |
      | Language     |
      | Timezone     |
      | Notes        |

  Scenario: Opening customer "Edit Appointment" pop-up 
    Given a customer exists in "Customers" list
    And the customer has appointment in "Appointments" list
    When the user clicks on appointment link
    Then the "Edit Appointment" pop-up is shown
