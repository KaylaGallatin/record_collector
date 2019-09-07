class Album < ApplicationRecord
  belongs_to :user

  validates :title, :release_date, presence: true
end
