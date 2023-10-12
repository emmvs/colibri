class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.references :language, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.string :source
      t.date :published_at
      t.string :external_link

      t.timestamps
    end
  end
end
