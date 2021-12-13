class Book < ApplicationRecord
    mount_uploader  :picture, ImageUploader
    validates :title,  presence: true,  length: { maximum: 50 }, uniqueness: true
    validates :author, presence: false, length: { maximum: 50 }
    validates :page, presence: true, numericality: { only_integer: true, message: "は数字のみです"}
    validates :image, presence: false
    validates :new_date, presence: true
end
