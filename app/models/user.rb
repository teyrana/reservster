class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # "x belongs_to y"
  #     =>  means x table has y_id column
  belongs_to :role

  validates_confirmation_of :password

  validates :name, presence: true
  validates :role, presence: true
end
