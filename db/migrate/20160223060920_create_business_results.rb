class CreateBusinessResults < ActiveRecord::Migration
  def change
    create_table :business_results do |t|
      t.string :system_name
      t.string :content

      t.timestamps
    end
  end
end
