class AddColumnToSpecialties < ActiveRecord::Migration
  def change
    add_column :specialties, :ancestry, :string
    add_index :specialties, :ancestry
  end
end
