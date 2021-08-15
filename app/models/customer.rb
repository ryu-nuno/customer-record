class Customer < ApplicationRecord

  belongs_to :user
  has_many :histories, dependent: :destroy


  def self.search(keyword)
  where(["customer_name like? OR address like?", "%#{keyword}%", "%#{keyword}%"])
  end

end
