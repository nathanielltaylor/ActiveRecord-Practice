class Bug < ActiveRecord::Base
  belongs_to :developer
  belongs_to :application

  validates :name, presence: true
  validates :due, presence: true
  validates :application, presence: true
end
