class Book < ApplicationRecord
    before_save { self.page = page.tr!("０-９", "0-9") }
    mount_uploader  :picture, ImageUploader
    validates :title,  presence: true,  length: { maximum: 50 }, uniqueness: true
    validates :author, presence: false, length: { maximum: 50 }
    validates :page, presence: true, numericality: { only_integer: true, message: "は数字/半角のみです"}
    validates :picture, presence: true
    validates :new_date, presence: true
end
