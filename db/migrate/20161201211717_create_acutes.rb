class CreateAcutes < ActiveRecord::Migration[5.0]
  def change
    create_table :acutes do |t|

      t.datetime :date_created
      t.string :answer
      t.references :patient, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
