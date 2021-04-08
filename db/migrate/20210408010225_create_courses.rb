class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.text :course_info
      t.string :course_address

      t.timestamps
    end
  end
end
