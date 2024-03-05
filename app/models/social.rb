class Social < ApplicationRecord
	belongs_to :user
	validates :username, presence: true
  validates :password, presence: true
  validates :media_type, presence: true
end
