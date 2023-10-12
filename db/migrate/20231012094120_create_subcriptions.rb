class CreateSubcriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subcriptions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :level
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
