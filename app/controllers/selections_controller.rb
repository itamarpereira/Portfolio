class SelectionsController < ApplicationController
  before_action :set_selection, only: [:show]  
  
  def show
  end

  private

  def set_selection
    @selection = Selection.find(params[:id])
  end
end
