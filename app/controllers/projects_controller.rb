class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def port
    @projects = Project.all
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :url, :photo)
  end
end
