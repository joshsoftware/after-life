class CreateUserWishes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_wishes do |t|
      t.references :user, foreign_key: true
      t.references :wish, foreign_key: true
      t.text :description
      t.string :frequency
      t.string :when_to
      t.string :end_date
      t.timestamps
    end
  end
end
