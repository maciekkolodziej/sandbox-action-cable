class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string    :name
      t.date      :deadline
      t.boolean   :done,      null: false,  default: false

      t.timestamps
    end
  end
end
