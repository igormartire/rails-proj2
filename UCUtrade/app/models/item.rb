class Item < ActiveRecord::Base
    belongs_to :user
    has_many :comments

    def self.search(search)
        where("name LIKE ?", "%#{search}%")
        # if search
        #     find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
        # else
        #     find(:all)
        # end
    end
end
