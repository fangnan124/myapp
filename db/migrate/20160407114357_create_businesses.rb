class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :field
      t.string :programming_language
      t.string :business

      t.timestamps
    end
  end
end
