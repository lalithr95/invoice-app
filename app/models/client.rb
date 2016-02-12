class Client < ActiveRecord::Base
	belongs_to :user
	validates :name, presence: true
	validates :contact, presence: true
	validates :email, presence: true, uniqueness: true
end
