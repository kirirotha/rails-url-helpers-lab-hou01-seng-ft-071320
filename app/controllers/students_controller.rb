class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.all.find_by(params[:id])
  end

  def activate
    @student = Student.all.find_by(params[:id])
  
    if @student.active == false
    @student.active = true
    elsif @student.active == true
      @student.active = false
    end
    @student.save
    redirect_to action: "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end