class CreatePesans < ActiveRecord::Migration
  def change
    create_table :pesans do |t|
      t.string :name
      t.text :text

      t.timestamps null: false
    end
  end
end
