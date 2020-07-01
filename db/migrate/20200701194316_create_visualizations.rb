class CreateVisualizations < ActiveRecord::Migration[6.0]
  def change
    create_table :visualizations do |t|
      t.string :language
      t.string :theme

      t.timestamps
    end
  end
end
