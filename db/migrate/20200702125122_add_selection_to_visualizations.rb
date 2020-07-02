class AddSelectionToVisualizations < ActiveRecord::Migration[6.0]
  def change
    add_reference :visualizations, :selection, null: false, foreign_key: true
  end
end
