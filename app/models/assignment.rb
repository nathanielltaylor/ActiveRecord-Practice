class Assignment < ActiveRecord::Base
  belongs_to :application
  belongs_to :developer

  validates :application, presence: true
  validates :developer, presence: true
end
