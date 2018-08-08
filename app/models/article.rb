class Article < ApplicationRecord
  validates :from_name, :from_street1, :from_street2, :from_city, :from_state, :to_name, :to_company, :to_city, :to_state, :to_zip, presence: true,
                   length:  { minimum: 5 }
  validates :from_zip, :to_zip, presence: true,
                    length: {minimum:6, maximum:6}
  validates :from_phone, presence: true,
                    length: {minimum:10, maximum:10}
  validates :width, :length, :height, :weight, presence: true
end
