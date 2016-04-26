class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :item, index:true
      t.string :text
      t.timestamps null: false
    end
  end
end
