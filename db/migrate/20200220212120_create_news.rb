class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :headline
      t.string :announcement
      t.text :text
      t.boolean :publication

      t.timestamps
    end
  end
end
