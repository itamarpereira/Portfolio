class AddPortDescriptionToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :port_description, :string
  end
end
