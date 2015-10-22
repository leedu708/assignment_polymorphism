class CreateUndergraduatePrograms < ActiveRecord::Migration
  def change
    create_table :undergraduate_programs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
