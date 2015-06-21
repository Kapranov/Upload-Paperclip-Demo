class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.attachment :avatar
      t.attachment :resume

      t.timestamps null: false
    end
  end
end
