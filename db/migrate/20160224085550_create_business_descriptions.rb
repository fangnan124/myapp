class CreateBusinessDescriptions < ActiveRecord::Migration
  def change
    create_table :business_descriptions do |t|
      t.string :field
      t.string :programming_language
      t.string :business

      t.timestamps
    end
  end
end
