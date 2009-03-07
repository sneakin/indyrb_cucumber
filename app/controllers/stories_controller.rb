class StoriesController < ApplicationController
  def new
    @story = project.stories.build
  end

  def create
    @story = project.stories.build(params[:story])
    @story.save!

    flash[:notice] = "The story has been created."
    redirect_to(project_path(project))
  rescue ActiveRecord::RecordInvalid
    flash[:notice] = "The story had errors."
    render :action => 'new'
  end

  protected

  helper_method :project
  def project
    @project = Project.find(params[:project_id])
  end
end
