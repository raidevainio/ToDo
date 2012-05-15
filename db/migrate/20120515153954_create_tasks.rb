class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :employee
      t.boolean :new_task
      t.date :deadline

      t.timestamps
    end
  end
end
