class CreateRelatives < ActiveRecord::Migration[6.0]
  def change
    create_table :relatives do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :relation
      t.string :contact_number
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
