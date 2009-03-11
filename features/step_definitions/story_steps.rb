Given /^a story$/ do
  @story = Story.create(:title => 'Bad Story', :body => 'As a developer I will do something stupid.', :project_id => @project.id)
end

When /^I follow the delete story link$/ do
  # When "I follow \"delete_story_#{@story.id}\""
  When "I follow \"Delete\""
end

When /^I want to cancel the confirmation$/ do
  selenium.choose_cancel_on_next_confirmation
end

When /^I want to confirm$/ do
  selenium.choose_ok_on_next_confirmation
end

When /^I confirm$/ do
  selenium.confirmation.should be_true
end

Then /^I should see a confirmation saying \"(.*)\"$/ do |msg|
  selenium.confirmation.should == msg
end

Then /^a new story is created$/ do
  @story = Story.find(:last)
end

Then /^it's title is "(.*)"$/ do |title|
  @story.title.should == title
end

Then /^it's body is "(.*)"$/ do |body|
  @story.body.should == body
end

Then /^a new story is not created$/ do
  Story.count.should == 0
end

Then /^I should see the story form$/ do
  response.should have_tag("form[action=?]", project_stories_path(@project)) do
    with_tag("input[name=?]", "story[title]")
    with_tag("textarea[name=?]", "story[body]")
    with_tag("input[type=?][value=?]", 'submit', "Create")
  end
end

Then /^the story still exists$/ do
  Story.find_by_id(@story.id).should_not be_nil
end
