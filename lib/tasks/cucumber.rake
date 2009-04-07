$:.unshift(RAILS_ROOT + '/vendor/plugins/cucumber/lib')
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "-p default --format pretty"
  t.feature_pattern = "features/plain/*.feature"
  t.step_pattern = "features/step_definitions/*.rb"
end
task :features => 'db:test:prepare'

namespace :features do
  Cucumber::Rake::Task.new(:coverage) do |t|
    t.cucumber_opts = "-p default --format html -o doc/features.html" 
    t.rcov = true
    t.feature_pattern = "features/plain/*.feature"
    t.step_pattern = "features/step_definitions/*.rb"
  end

  Cucumber::Rake::Task.new(:selenium) do |t|
    t.cucumber_opts = "-p selenium --format pretty"
    t.feature_pattern = "features/selenium/*.feature"
    t.step_pattern = "features/step_definitions/*.rb"
  end
end

