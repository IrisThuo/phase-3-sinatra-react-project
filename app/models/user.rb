class User < ActiveRecord::Base
  has_many :movies
  validates :username, uniqueness: { case_sensitive: false }, presence: true
  validates :password, presence: true
end