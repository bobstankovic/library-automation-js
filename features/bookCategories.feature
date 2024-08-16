@lib-03
Feature: Book Categories

    As a user, I want to see 21 book categories, so I can filter my favorite books.

    #* AC1: users should see 21 book categories When users click the Book Categories drop down 
    #*      ALL, Action and Adventure, Anthology, Classic, Comic and Graphic Novel, Crime and Detective, Drama
    #*      , Fable, Fairy Tale, Fan-Fiction, Fantasy, Historical Fiction, Horror, Science Fiction, Humor
    #*      , Biography/Autobiography, Romance, Short Story, Essay, Memoir, Poetry


    @lib-03-01
    # TODO: verify users see 21 book categories
    Scenario Outline: Verify that user sees 21 book categories
     Given user is already on the login page
     And user is already logged in as "<user-type>"
     When user clicks Books link
     And user clicks the book categories drop down box
     Then user should see 21 book categories
     Examples:
            | user-type |
            | admin     |
            | student   |



    @lib-03-02
    # TODO: Verify that all 21 book categories are displayed under the Boook Categories drop down
    Scenario Outline: Verify that all 21 books are dusplayed in exact order for both admin and student users
     Given user is already on the login page
     And user is already logged in as "<user-type>"
     When user clicks Books link
     And user clicks the book categories drop down box
     Then book category name "<category>" should be included in the categories

     Examples:
            | user-type | category             |
            | admin     | ALL                  |
            | admin     | Action and Adventure |

    #? Should there be more scenarios for this user story? Feel free to add more scenarios.