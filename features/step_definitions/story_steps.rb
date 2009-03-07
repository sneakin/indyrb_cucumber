Then /^a new story is created$/ do
  @story = Story.find(:last)
end

Then /^it's title is "(.*)"$/ do |title|
  @story.title.should == title
end

Then /^it's body is "(.*)"$/ do |body|
  @story.body.should == body
end

Then /^I see a notice saying "The story has been created\."$/ do
  pending
end

When /^I fill in title with ""$/ do
  pending
end

When /^I fill in body with ""$/ do
  pending
end

Then /^a new story is not created$/ do
  pending
end

Then /^it has errors on the title$/ do
  pending
end

Then /^it has errors on the body$/ do
  pending
end

Then /^I am viewing the story$/ do
  pending
end

