class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def active
    @student = Student.find(params[:id])
    new_state = !@student.active
    @student.update(active: new_state)
    redirect_to student_url(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
