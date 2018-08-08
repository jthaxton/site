class Article < ApplicationRecord
  validates :from_name, :from_street1, :from_city, :to_name, :to_street, :to_city, :to_zip, presence: true,
                   length:  { minimum: 5 }
  validates :from_zip, :to_zip, presence: true,
                    length: {minimum:5, maximum:5}
  validates :from_phone, presence: true,
                    length: {minimum:10, maximum:10}
  validates :width, :length, :height, :weight, :to_state, :from_state, presence: true
end
