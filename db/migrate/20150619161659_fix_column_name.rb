class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :contacts, :company, :department
    add_foreign_key :contacts_id
  end
end
