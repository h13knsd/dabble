class RemovePasswordFromDoctor < ActiveRecord::Migration[5.0]
  def change
    remove_column :doctors, :password, :string
  end
end
