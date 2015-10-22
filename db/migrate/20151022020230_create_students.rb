class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :program_id
      t.string :program_type

      t.timestamps null: false
    end

    add_index :students, [:program_id, :program_type]
  end
end
