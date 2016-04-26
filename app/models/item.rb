class Item < ActiveRecord::Base
    belongs_to :user
    has_many :comments, as: :commentable
    has_many :comments, dependent: :destroy
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :avatar, content_type: ["image/jpeg", "image/gif", "image/png"]

    def self.search(search)
        where("name LIKE ?", "%#{search}%")
    end
end
