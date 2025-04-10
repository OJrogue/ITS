# ITS project 1
# Author: Ondrej Jakub Chromy (xchromo00)

Feature: Managing appointment information

  Background:
    Given the user is logged in as administrator
    And the user is on Calendar page

  Scenario: Opening "Add New Event" pop-up from calendar
    When the user clicks on empty space in Calendar
    Then "Add New Event" pop-up is displayed

  Scenario: Opening "New Appointment" pop-up with plus button
    When plus button is pressed
    And  "Appointment" is selected
    Then "New Appointment" pop-up is displayed

  Scenario: Opening "New Appointment" pop-up from "Add New Event" pop-up
    Given "Add New Event" pop-up is displayed
    When "Appointment" button is pressed
    Then "New Appointment" pop-up is displayed

  Scenario: Adding new appointment
    Given "New Appointment" pop-up is displayed
    When required fields are filled with valid information
    And "Save" button is pressed
    Then new appointment is displayed in calendar

  Scenario: Viewing appointment information
    Given the calendar contains an appointment
    When the user clicks on appointment
    Then appointment information is displayed

  Scenario: Closing appointment information
    Given the calendar contains an appointment
    And appointment information is displayed
    When "Close" button is pressed
    Then appointment information is closed

  Scenario: Showing "Edit Appointment" pop-up
    Given the calendar contains an appointment
    And appointment information is displayed
    When "Edit" button is pressed
    Then "Edit Appointment" pop-up is displayed

  Scenario: Editing appointment
    Given the calendar contains an appointment
    And "Edit Appointment" pop-up is displayed
    When required fields are filled with valid information
    And "Save" button is pressed
    Then appointment with filled information is displayed in calendar

  Scenario: Showing "Delete Appointment" pop-up
    Given the calendar contains an appointment
    And appointment information is displayed
    When the user clicks on "DELETE" button
    Then "Delete Appointment" pop-up is displayed

  Scenario: Deleting appointment
    Given the calendar contains an appointment
    And "Delete Appointment" pop-up is displayed
    When "Delete" button is pressed
    Then calender does not contain the appointment

  Scenario: Canceling appointment deletion
    Given the calendar contains an appointment
    And "Delete Appointment" pop-up is displayed
    When "Delete" button is pressed
    Then "Delete Appointment" pop-up is not displayed
    And the calendar still contains the appointment
