class Image < ActiveRecord::Base
  validates :alt, :product, presence: true
  has_attached_file :image,
    styles: {
      large: ["x900", :jpg],
      medium: ["600x600>", :jpg],
      thumb: ["80x80>#", :jpg],
      carousel: ["270x200>", :jpg],
    },
    default_url: "./assets/images/default/kitten-looking-up1.jpg"

  validates_attachment_content_type :image,
    content_type: /\Aimage\/.*\Z/

  belongs_to :product, inverse_of: :images
end
