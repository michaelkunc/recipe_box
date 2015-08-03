class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :directions

  accepts_nested_attributes_for :ingredients, :directions

  validates :title, :description, :image, presence: true
  has_attached_file :image, styles: { medium: "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
