class Book < ApplicationRecord
    validates :title,  presence: true, length: { maximum: 50 }
    validates :author, presence: false, length: { maximum: 50 }
    validates :page, presence: true
    validates :image, presence: false
    validates :new_date, presence: true
end
