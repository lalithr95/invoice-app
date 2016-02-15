class Client < ActiveRecord::Base
  belongs_to :user
  has_many :client_invoices
  validates :name, presence: true
  validates :contact, presence: true
  validates :email, presence: true, uniqueness: true
end
