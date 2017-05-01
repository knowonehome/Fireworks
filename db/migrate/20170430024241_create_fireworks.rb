class CreateFireworks < ActiveRecord::Migration[5.1]
  def change
    create_table :fireworks do |t|
      t.string :name
      t.string :sytle
      t.string :description

      t.timestamps
    end
  end
end
