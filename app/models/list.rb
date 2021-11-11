class List < ApplicationRecord
  validates :name, uniqueness: true, allow_blank: false
  has_many :bookmarks
  has_many :movies, through: :bookmarks
end


  # name cannot be blank (FAILED - 2)
  # has many bookmarks (FAILED - 3)
  # has many movies (FAILED - 4)
  # should destroy child saved movies when destroying self
