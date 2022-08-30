class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :recipes, foreign_key: :users_id, class_name: 'Recipe', dependent: :delete_all
  has_many :foods, foreign_key: :users_id, class_name: 'Food', dependent: :delete_all

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable 
end
