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

Then /^it has errors on the title$/ do
  pending
end

Then /^it has errors on the body$/ do
  pending
end

Then /^I am viewing the story$/ do
  pending
end

