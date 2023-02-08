class CreateGrids < ActiveRecord::Migration[7.0]
  def change
    create_table :grids do |t|
      t.jsonb :payload

      t.timestamps
    end
  end
end
