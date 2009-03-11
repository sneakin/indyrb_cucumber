Then /^I see a notice saying "The story has errors\."$/ do
  pending
end

Then /^I am redirected to (.+)$/ do |path|
  response.request.path.should == path_to(path)
end

Then /^I am viewing (.+)$/ do |path|
  response.request.path.should =~ /#{path_to(path)}$/
end
