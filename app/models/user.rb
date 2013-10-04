class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :follower_relation, class_name: "UserRelation", foreign_key: :following_id
  has_many :following_relation, class_name: "UserRelation", foreign_key: :follower_id

  has_many :followers, through: :follower_relation, foreign_key: :follower_id
  has_many :following, through: :following_relation, foreign_key: :following_id

end
