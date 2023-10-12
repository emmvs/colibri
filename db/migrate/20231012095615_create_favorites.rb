class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true
      t.date :saved_at

      t.timestamps
    end
  end
end
