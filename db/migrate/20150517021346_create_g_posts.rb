class CreateGPosts < ActiveRecord::Migration
  def change
    create_table :g_posts do |t|
      t.float  :lat
      t.float  :lon
      t.string :image
      t.string :user_id
      t.string :user_name
      t.string :park
      t.string :ip_address

      t.timestamps null: false
    end
  end
end
