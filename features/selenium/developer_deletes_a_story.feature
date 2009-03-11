Story: [2] Developer deletes a story.

  As a developer
  I want to delete stories
  So I can correct past mistakes

  Scenario: clicking delete
    Given a project
      And a story
    When I go to the project page
      And I follow the delete story link
    Then I should see a confirmation saying "Are you sure?"

  Scenario: confirming the delete
    Given a project
      And a story
    When I go to the project page
      And I want to confirm
      And I follow the delete story link
      And I confirm
    Then I am viewing the project page
      And I should see "The story has been deleted."

  Scenario: canceling a delete
    Given a project
      And a story
    When I go to the project page
      And I want to cancel the confirmation
      And I follow the delete story link
      And I confirm
    Then I am viewing the project page
      And the story still exists