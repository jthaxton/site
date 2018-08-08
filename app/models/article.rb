class Article < ApplicationRecord
  validates :from_name, presence: true,
                   length: { minimum: 5 }
  
end
