class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate_student
    @student = Student.find(params[:id])
    new_active = @student.activate
    @student.update(active: new_active)
    redirect_to action: "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
