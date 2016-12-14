class RemovePasswordFromPatient < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :password, :string
  end
end
