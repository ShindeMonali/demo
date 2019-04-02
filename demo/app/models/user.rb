class User < ApplicationRecord
  validates :Firstname, :presence => true
  validates :Lastname, :presence => true
  validates :City, :presence => true
end
