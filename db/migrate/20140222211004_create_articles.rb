class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.text :body
      t.datetime :published_on

      t.timestamps
    end
  end
end
