class CreateNewses < ActiveRecord::Migration
  def change
    create_table :newses do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
