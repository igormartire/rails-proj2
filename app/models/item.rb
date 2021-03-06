class Item < ActiveRecord::Base
    belongs_to :user
    has_many :comments, as: :commentable
    has_many :comments, dependent: :destroy
    has_attached_file :avatar, styles: { medium: "300x300>" }
    validates_attachment_content_type :avatar, content_type: ["image/jpeg", "image/gif", "image/png"]
    validates :name, presence: true
    validates :price, presence: true

    def self.search(search)
        where("lower(name) LIKE ?", "%#{search.downcase}%")
    end
end
