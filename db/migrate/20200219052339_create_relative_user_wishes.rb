class CreateRelativeUserWishes < ActiveRecord::Migration[6.0]
  def change
    create_table :relative_user_wishes do |t|
      t.references :relative, foreign_key: true
      t.references :user_wish, foreign_key: true
      t.references :wish, foreign_key: true
      t.timestamps
    end
  end
end
