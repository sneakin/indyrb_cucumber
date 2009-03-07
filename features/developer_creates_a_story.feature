Story: [1] Developer creates a story.

  As a developer
  I want to create stories
  So that I can prove my app does what my customer agrees to.

  Scenario: valid story
    Given a project
    When I go to the project page
      And I click add a story
      And I fill in title with "Developer creates a story"
      And I fill in body with "As a developer I want to create stories."
      And I click "Create"
    Then a new story is created
      And it's title is "Developer creates a story"
      And it's body is "As a developer I watn to create stories."
      And I am viewing the project page
      And I see a notice saying "The story has been created."

  Scenario: empty story
    Given a project
    When I go to the project page
      And I click add a story
      And I fill in title with ""
      And I fill in body with ""
      And I click "Create"
    Then a new story is not created
      And it has errors on the title
      And it has errors on the body
      And I am viewing the story
      And I see a notice saying "The story has errors."
