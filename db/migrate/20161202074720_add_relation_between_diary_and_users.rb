class AddRelationBetweenDiaryAndUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :diary, foreign_key: true
  end
end
