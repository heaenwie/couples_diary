class Diary < ApplicationRecord
  has_many :users
  has_many :entries
end
