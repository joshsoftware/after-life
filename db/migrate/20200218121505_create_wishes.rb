class CreateWishes < ActiveRecord::Migration[6.0]
  def change
    create_table :wishes do |t|
      t.string :title
      t.boolean :is_global, null: false, default: false
      t.boolean :is_pending, null: false, default: true

      t.timestamps
    end
  end
end
