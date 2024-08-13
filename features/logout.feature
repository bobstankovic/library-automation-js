@lib-02
Feature: Logout from the application

    As a user, I should be able to logout from the app.

    #* AC1: user should log out from the homepage by clicking the “Log out”  button under the account name.


    # TODO: verify users can logout from the app
    Background:
        Given user is already on the login page

@lib-02-01
    Scenario Outline: verify user can logout from homepage
        Given user is already logged in as "<user-type>"
        When use click user profile on top right corner of the page
        And click the logout button
        Then user should be logged out from the app

    Example:
            | user-type |
            | admin     |
            | student   |


#? Should there be more scenarios for this user story? Feel free to add more scenarios.