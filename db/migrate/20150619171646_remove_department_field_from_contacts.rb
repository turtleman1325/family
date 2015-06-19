class RemoveDepartmentFieldFromContacts < ActiveRecord::Migration
  def up
    ActiveRecord::Base.connection.execute """
      INSERT INTO
        departments(name, created_at, updated_at)
      SELECT
        DISTINCT department, date('now'), date('now')
      FROM
        contacts"""
    ActiveRecord::Base.connection.execute """
      UPDATE contacts SET department_id = (
          SELECT id FROM departments WHERE name = contacts.department)"""
    change_table :contacts do |t|
      t.remove :department
    end
  end

  def down
    change_table :contacts do |t|
      t.string :department
    end

    ActiveRecord::Base.connection.execute """
      UPDATE contacts SET department = (SELECT name FROM departments WHERE id = department_id);
      DELETE FROM departments"""

  end
end
