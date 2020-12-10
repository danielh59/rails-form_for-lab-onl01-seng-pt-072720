class SchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |s|
      s.string :title
      s.integer :room_number

      s.timestamps null: false
    end
  end
end
