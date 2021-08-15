class Customer < ApplicationRecord
  
  belongs_to :user
  has_many :histories, dependent: :destroy
  
end
