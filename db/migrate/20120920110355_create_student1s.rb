class CreateStudent1s < ActiveRecord::Migration
  def change
    create_table :student1s do |t|
      t.string :lname
      t.date :dob
      t.boolean :choose

      t.timestamps
    end
  end
end
