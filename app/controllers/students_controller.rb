class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    stu
  end

  def edit
    stu
  end

  def update
    stu
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end

  private
  def student_params(*args)
    params.require(:student).permit(*args)
  end

  def stu
    @student = Student.find(params[:id])
  end

end
