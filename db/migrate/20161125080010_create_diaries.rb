class CreateDiaries < ActiveRecord::Migration[5.0]
  def change
    create_table :diaries do |t|
      t.string :name

      t.timestamps
    end
    add_foreign_key :diaries, :users
  end
end
