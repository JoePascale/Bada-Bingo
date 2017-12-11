class RegisteredApplication < ActiveRecord::Base
  belongs_to :user

  has_many :events

  validates :url, :url => true
end
