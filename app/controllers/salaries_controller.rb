class SalariesController < ApplicationController
  before_action :set_salary, only: %i[ show edit update destroy ]

  # GET /salaries or /salaries.json
  def index
    @salaries = Salary.all
  end

  # GET /salaries/1 or /salaries/1.json
  def show
  end

  # GET /salaries/new
  def new
    @salary = Salary.new
    @employee = Employee.all

    # if (@salary.salary > 1000) 
    #   tax_bracket_id = 4
    # end
  end

  # GET /salaries/1/edit
  def edit
  end

  # POST /salaries or /salaries.json
  def create
    @salary = Salary.new(salary_params)

    if (@salary.salary > 180001)
      @salary.tax_bracket_id = 1
    elsif (@salary.salary > 80001)
      @salary.tax_bracket_id = 2
    elsif (@salary.salary > 40001)
      @salary.tax_bracket_id = 3
    elsif (@salary.salary > 20001)
      @salary.tax_bracket_id = 4
    elsif (@salary.salary > 1)
      @salary.tax_bracket_id = 5
    end 

    @salary.annual_salary = @salary.salary * 12
    
    respond_to do |format|
      if @salary.save
        format.html { redirect_to @salary, notice: "Salary was successfully created." }
        format.json { render :show, status: :created, location: @salary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salaries/1 or /salaries/1.json
  def update
    respond_to do |format|
      if @salary.update(salary_params)
        format.html { redirect_to @salary, notice: "Salary was successfully updated." }
        format.json { render :show, status: :ok, location: @salary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salaries/1 or /salaries/1.json
  def destroy
    @salary.destroy
    respond_to do |format|
      format.html { redirect_to salaries_url, notice: "Salary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salary
      @salary = Salary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def salary_params
      params.require(:salary).permit(:salary, :annual_salary, :monthly_nett_income, :employee_id)
      # params.require(:employee).permit(employee_id: [])
      
    end
end
