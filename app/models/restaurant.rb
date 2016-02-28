
class Restaurant < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  searchkick

  has_many :reviews

  validates :name, :address, :phone, :website, :image, presence: true
	validates :phone, format: { with: /\A\(\d{3}\)\d{3}-\d{4}\z/,
    message: "must be in the format (123)456-7980" }
end
