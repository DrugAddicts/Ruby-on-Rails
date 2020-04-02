class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.integer :a
      t.text :result

      t.timestamps
    end
  end
end
