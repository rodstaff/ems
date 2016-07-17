class Employee < ActiveRecord::Base

  has_many :cars, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

end
