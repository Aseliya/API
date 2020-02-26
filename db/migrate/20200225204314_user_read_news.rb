class UserReadNews < ActiveRecord::Migration[5.2]
  def change
    create_table :user_read_news, :id => false do |t|
      t.integer :user_id
      t.integer :news_id
      t.boolean :read
    end
  end
end
