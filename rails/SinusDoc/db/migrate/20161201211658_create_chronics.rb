class CreateChronics < ActiveRecord::Migration[5.0]
  def change
    create_table :chronics do |t|

      t.datetime :date_created
      t.float :discomfort_score
      t.references :patient, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
