class CreateMatters < ActiveRecord::Migration[5.2]

  def change
    create_table :matters do |t|
      t.string :name,             null: false
      t.integer :price,           null: false
      t.string :category,      null: false
      t.text :description,        null: false
      t.string :filingday,        null: false
      t.string :skill,            null: false
      t.timestamps
    end
  end
end
