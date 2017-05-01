class CreateAlternateNames < ActiveRecord::Migration[5.1]
  def change
    create_table :alternate_names do |t|
      t.string :alt_name
      t.references :firework, foreign_key: true

      t.timestamps
    end
  end
end
