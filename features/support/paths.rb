module NavigationHelpers
  def path_to(page_name)
    case page_name
    
    when /the homepage/i
      root_path
    when /the project page/i
      project_path(@project)
    when /the project's stories path/i
      project_stories_path(@project)
    # Add more page name => path mappings here
    else
      raise "Can't find mapping from \"#{page_name}\" to a path."
    end
  end
end

World do |world|
  world.extend NavigationHelpers
  world
end
