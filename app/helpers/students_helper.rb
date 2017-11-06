module StudentsHelper
  def current_student
  Student.find_by(id: session[:student_id])
end
end
