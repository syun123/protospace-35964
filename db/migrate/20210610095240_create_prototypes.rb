class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.references :user,        null: false, foreign_key: true
      t.string :title,          null: false 
      t.string :catch_copy,     null: false  
      t.string :concept,        null: false 
      

      t.timestamps
    end
  end
end
