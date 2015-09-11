class Developer < ActiveRecord::Base
  has_many :assignments
  has_many :applications, through: :assignments

  has_many :bugs

  validates :name, presence: true
  validates :email, presence: true
end
