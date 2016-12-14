class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.string :password
      t.references :doctor, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
