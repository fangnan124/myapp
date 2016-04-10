class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :system_name
      t.string :content

      t.timestamps
    end
  end
end
