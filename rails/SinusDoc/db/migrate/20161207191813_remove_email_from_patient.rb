class RemoveEmailFromPatient < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :email, :string
  end
end
