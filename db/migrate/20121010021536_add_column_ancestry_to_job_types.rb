class AddColumnAncestryToJobTypes < ActiveRecord::Migration
  def change
    add_column :job_types, :ancestry, :string
    add_index :job_types, :ancestry
  end
end
