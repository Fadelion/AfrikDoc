class RemoveSpecialityFromDoctors < ActiveRecord::Migration[8.0]
  def change
    remove_column :doctors, :speciality, :string
  end
end
