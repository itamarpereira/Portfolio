class CreateSelections < ActiveRecord::Migration[6.0]
  def change
    create_table :selections do |t|
      t.references :project, null: false, foreign_key: true
      t.references :visualization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
