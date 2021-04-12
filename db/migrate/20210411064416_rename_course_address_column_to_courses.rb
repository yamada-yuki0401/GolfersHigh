class RenameCourseAddressColumnToCourses < ActiveRecord::Migration[5.2]
  def change
    rename_column :courses, :course_address, :golfCourseName
  end
end
