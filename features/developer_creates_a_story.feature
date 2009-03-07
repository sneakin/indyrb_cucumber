Story: [1] Developer creates a story.

  As a developer
  I want to create stories
  So that I can prove my app does what my customer agrees to.

  Scenario: valid story
    Given a project
    When I go to the project page
      And I follow "Add Story"
      And I fill in "story[title]" with "Developer creates a story"
      And I fill in "story[body]" with "As a developer I want to create stories."
      And I press "Create"
    Then a new story is created
      And it's title is "Developer creates a story"
      And it's body is "As a developer I want to create stories."
      And I am viewing the project page
      And I should see "The story has been created."

  Scenario: empty story
    Given a project
    When I go to the project page
      And I follow "Add Story"
      And I fill in "story[title]" with ""
      And I fill in "story[body]" with ""
      And I press "Create"
    Then a new story is not created
      And I should see "Title can't be blank"
      And I should see "Body can't be blank"
      And I should see "The story had errors."
