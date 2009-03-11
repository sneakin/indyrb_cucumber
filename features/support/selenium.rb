Webrat.configure do |config|
  config.mode = :selenium
  config.application_environment = :test # webrat will try :selenium
end

Before do
  # Clean out the tables and/or load fixtures
end
