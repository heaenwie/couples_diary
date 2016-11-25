class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_foreign_key :entries, :diaries
  end
end
