class AddSymptomsToAcutes < ActiveRecord::Migration[5.0]
  def change
    change table :acutes do |t|
      t.integer :nasal_congestion
      t.integer :nasal_drainage
      t.integer :facial_pain_or_headaches
      t.integer :loss_of_sense_of_smell
      t.integer :duration
      t.integer :better_or_worse
      t.boolean :emergency_symptoms
    end
  end
end
