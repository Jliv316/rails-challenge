class AddressesController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @address = Address.new()
  end

  def create
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new(address_params)
    if @address.save
      flash[:success] = "Created address: #{@address.description}"
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  private
  def address_params
    params.require(:address).permit(:state, :description, :city, :zip, :street)
  end
end