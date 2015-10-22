class CreateGraduatePrograms < ActiveRecord::Migration
  def change
    create_table :graduate_programs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
