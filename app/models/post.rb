class Post < ActiveRecord::Base
  #validates :title, presence: true, length: {minimum: 5, maximum: 10}, uniqueness: true
  has_many :comments, dependent: :destroy


end
