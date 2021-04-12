class RenameCourseNameColumnToCourses < ActiveRecord::Migration[5.2]
  def change
    rename_column :courses, :course_info, :golfCourseCaption
  end
end
