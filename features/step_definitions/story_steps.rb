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
