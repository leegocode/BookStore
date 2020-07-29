class Book < ApplicationRecord

  validates :title, :publish_date, presense: true
  
end
