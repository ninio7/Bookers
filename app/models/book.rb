class Book < ApplicationRecord
  has_one_attached :image
  
  validates :title, presence: true
  validates :body, presence: true
  
 # has_many :events, foreign_key: :book_id, dependent: :destroy
  #has_many :participations, foreign_key: :book_id, dependent: :destroy

  
end
