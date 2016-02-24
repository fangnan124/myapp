class CreateRecruits < ActiveRecord::Migration
  def change
    create_table :recruits do |t|
      t.string :job
      t.string :place
      t.string :recruitment
      t.integer :salary
      t.string :increase
      t.string :application

      t.timestamps
    end
  end
end
