Given /^a project$/ do
  @project = Project.create(:name => 'Story Keeper')
end

Then /^I am viewing the project page$/ do
  response.request.path.should == "/projects/#{@project.to_param}"
end
