Story: [2] Developer deletes a story.

  As a developer
  I want to delete stories
  So I can correct past mistakes

  Scenario: deleting a story
    Given a project
      And a story
    When I go to the project page
      And I follow the delete story link
    Then I am viewing the project page
      And I should see "The story has been deleted."