class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    @student = set_student
    @student.active = !@student.active
    @student.save
    redirect_to :student

  end

  def update
    set_student
    params[:student][:active] ||= false
    @student.update(active: params[:student][:active])
    redirect_to :student
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
