class AddSelectionToProjects < ActiveRecord::Migration[6.0]
  def change
    add_reference :projects, :selection, null: false, foreign_key: true
  end
end
