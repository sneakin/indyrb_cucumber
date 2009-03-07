class StoriesController < ApplicationController
  def new
    @story = project.stories.build
  end

  def create
    @story = project.stories.create!(params[:story])
    flash[:notice] = "The story has been created."
    redirect_to(project_path(project))
  end

  protected

  helper_method :project
  def project
    @project = Project.find(params[:project_id])
  end
end
