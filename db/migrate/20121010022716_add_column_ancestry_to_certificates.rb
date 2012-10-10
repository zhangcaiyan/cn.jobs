class AddColumnAncestryToCertificates < ActiveRecord::Migration
  def change
    add_column :certificates, :ancestry, :string
    add_index :certificates, :ancestry
  end
end
