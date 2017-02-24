class FixRelationBetweenEntriesAndDiaries < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :entries, :diaries
    add_reference :entries, :diary, foreign_key: true
  end
end
