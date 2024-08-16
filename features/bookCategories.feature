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
    | user-type | category                 |
    | admin     | ALL                      |
    | student   | ALL                      |
    | admin     | Action and Adventure     |
    | student   | Action and Adventure     |
    | admin     | Anthology                |
    | student   | Anthology                |
    | admin     | Classic                  |
    | student   | Classic                  |
    | admin     | Comic and Graphic Novel  |
    | student   | Comic and Graphic Novel  |
    | admin     | Crime and Detective      |
    | student   | Crime and Detective      |
    | admin     | Drama                    |
    | student   | Drama                    |
    | admin     | Fable                    |
    | student   | Fable                    |
    | admin     | Fairy Tale               |
    | student   | Fairy Tale               |
    | admin     | Fan-Fiction              |
    | student   | Fan-Fiction              |
    | admin     | Fantasy                  |
    | student   | Fantasy                  |
    | admin     | Historical Fiction       |
    | student   | Historical Fiction       |
    | admin     | Horror                   |
    | student   | Horror                   |
    | admin     | Science Fiction          |
    | student   | Science Fiction          |
    | admin     | Humor                    |
    | student   | Humor                    |
    | admin     | Biography/Autobiography  |
    | student   | Biography/Autobiography  |
    | admin     | Romance                  |
    | student   | Romance                  |
    | admin     | Short Story              |
    | student   | Short Story              |
    | admin     | Essay                    |
    | student   | Essay                    |
    | admin     | Memoir                   |
    | student   | Memoir                   |
    | admin     | Poetry                   |
    | student   | Poetry                   |






    #? Should there be more scenarios for this user story? Feel free to add more scenarios.