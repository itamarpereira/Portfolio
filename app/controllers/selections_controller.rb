class SelectionsController < ApplicationController
  before_action :set_projects, only: [:en_dark, :pt_dark, :en_light, :pt_light]  
  
  def en_dark
  end

  def pt_dark
  end

  def en_light
  end

  def pt_light
  end

  private

  def set_projects
    @projects = Project.all
  end
end
