class RenameDeparmentToDepartment < ActiveRecord::Migration
  def change
    rename_table :deparments, :departments
  end
end
