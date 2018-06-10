class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    # byebug
  end

  def edit
    @student = Student.find(params[:id])
    if @student.active == false
      @student.update(active: 1)
    else
      @student.update(active: 0)
    end
    redirect_to student_path
  end
  

  private

    def set_student
      @student = Student.find(params[:id])
    end
end