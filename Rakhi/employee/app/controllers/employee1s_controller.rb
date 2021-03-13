class Employee1sController < ApplicationController
  before_action :set_employee1, only: %i[ show edit update destroy ]

  # GET /employee1s or /employee1s.json
  def index
    @employee1s = Employee1.all
  end

  # GET /employee1s/1 or /employee1s/1.json
  def show
  end

  # GET /employee1s/new
  def new
    @employee1 = Employee1.new
  end

  # GET /employee1s/1/edit
  def edit
  end

  # POST /employee1s or /employee1s.json
  def create
    @employee1 = Employee1.new(employee1_params)

    respond_to do |format|
      if @employee1.save
        format.html { redirect_to @employee1, notice: "Employee1 was successfully created." }
        format.json { render :show, status: :created, location: @employee1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee1s/1 or /employee1s/1.json
  def update
    respond_to do |format|
      if @employee1.update(employee1_params)
        format.html { redirect_to @employee1, notice: "Employee1 was successfully updated." }
        format.json { render :show, status: :ok, location: @employee1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee1s/1 or /employee1s/1.json
  def destroy
    @employee1.destroy
    respond_to do |format|
      format.html { redirect_to employee1s_url, notice: "Employee1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee1
      @employee1 = Employee1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee1_params
      params.require(:employee1).permit(:first_name, :last_name, :phone_number, :address)
    end
end
