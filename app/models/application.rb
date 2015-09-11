class Application < ActiveRecord::Base
  has_many :assignments
  has_many :developers, through: :assignments

  has_many :bugs

  validates :name, presence: true
  validates :url, presence: true
end
