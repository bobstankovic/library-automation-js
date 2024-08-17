@lib-05
Feature: Main modules of the application

    As a student, I want to access to the main modules of the app.

    #* AC: students should see 2 modules: Books, Borrowing Books
    Scenario: Verify user can see 2 modules in Dashboard Page
      Given user is already on the login page
      When user is already logged in as "student"
      Then user shud see 2 modules

    # TODO: Verify students can see 2 main modules (Books and Borrowing Books)
  

    #? Should there be more scenarios for this user story? feel free to add more scenarios

