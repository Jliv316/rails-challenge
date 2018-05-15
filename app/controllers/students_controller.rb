class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Created student: #{@student.name}"
      redirect_to student_path(@student)
    else
      redirect_to student_path(@student)
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    if @student.save
      flash[:success] = "#{@student.name} updated!"
      redirect_to student_path(@student)
    else
      render :edit
    end
  end
  private

  def student_params
    params.require(:student).permit(:name)
  end
end