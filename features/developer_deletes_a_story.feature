Story: [2] Developer deletes a story.

  As a developer
  I want to delete stories
  So I can correct past mistakes

  Scenario: deleting a story
    Given a project
      And a story
    When I go to the project page
      And I follow the delete story link
      And I click "Ok"
    Then I am on the project page
      And I should see "The story has been deleted."

  Scenario: canceling a delete
    Given a project
      And a story
    When I go to the project page
      And I follow the delete story link
      And I click "Cancel"
    Then I am still on the project page
