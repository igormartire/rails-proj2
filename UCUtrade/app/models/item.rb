class Item < ActiveRecord::Base
    belongs_to :user
    has_many :comments, as: :commentable
    has_many :comments
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

    def self.search(search)
        where("name LIKE ?", "%#{search}%")
    end
end
