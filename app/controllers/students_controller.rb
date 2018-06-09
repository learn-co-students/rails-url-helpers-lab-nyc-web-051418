class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    @student = Student.find(params[:id])
    toggle_status = @student.activate
    @student.update(active: toggle_status)
    redirect_to action: show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
