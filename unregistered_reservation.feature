# ITS project 1
# Author: Ondrej Jakub Chromy (xchromo00)

Feature: Unregistered user appointment reservation

  Background:
    Given English language is selected

  Scenario: Choosing appointment time based on timezone
    Given the user is on appointment date & time page
    And no appointments exist
    When Samara timezone is selected
    Then First available reservation time is 1:00 PM

  Scenario: Progressing to Customer Information page
    Given the user is on appointment date & time page
    When "Next" button is pressed
    Then the user is on Customer Information page

  Scenario Outline: Unspecified customer information
    Given the user is on Customer Information page
    And <field> text field is empty
    When "Next" button is pressed
    Then <field> text field indicates missing information

    Examples:
        | field        |
        | First Name   |
        | Last Name    |
        | Email        |
        | Phone Number |

  Scenario: Progressing to Appointment Confirmation page
    Given First Name, Last Name, Email and Phone Number text fields are filled with valid values
    When "Next" button is pressed
    Then the user is on Appointment Confirmation page

  Scenario: Confirming appointment
    Given the user is on the Appointment Confirmation page
    When "Confirm" button is pressed
    Then the user is navigated to the Booking Confirmation page

  Scenario: User navigates back to the Appointment Date & Time from the Booking Confirmation page
    Given the user is on the Booking Confirmation page
    When "Go to booking page" button is pressed
    Then the user is navigated to the Appointment Date & Time page
  
  Scenario Outline: User navigates back to the previous page
    Given the user is on the <page>
    When "Back" button is pressed
    Then the user is navigated to the <previous_page> page

      Examples:
      | page                     | previous_page           |
      | Customer Information     | Appointment Date & Time |
      | Appointment Confirmation | Customer Information    |
