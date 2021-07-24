class TaxBracketsController < ApplicationController
  before_action :set_tax_bracket, only: %i[ show edit update destroy ]

  # GET /tax_brackets or /tax_brackets.json
  def index
    @tax_brackets = TaxBracket.all
  end

  # GET /tax_brackets/1 or /tax_brackets/1.json
  def show
  end

  # GET /tax_brackets/new
  def new
    @tax_bracket = TaxBracket.new
  end

  # GET /tax_brackets/1/edit
  def edit
  end

  # POST /tax_brackets or /tax_brackets.json
  def create
    @tax_bracket = TaxBracket.new(tax_bracket_params)

    respond_to do |format|
      if @tax_bracket.save
        format.html { redirect_to @tax_bracket, notice: "Tax bracket was successfully created." }
        format.json { render :show, status: :created, location: @tax_bracket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tax_bracket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tax_brackets/1 or /tax_brackets/1.json
  def update
    respond_to do |format|
      if @tax_bracket.update(tax_bracket_params)
        format.html { redirect_to @tax_bracket, notice: "Tax bracket was successfully updated." }
        format.json { render :show, status: :ok, location: @tax_bracket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tax_bracket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tax_brackets/1 or /tax_brackets/1.json
  def destroy
    @tax_bracket.destroy
    respond_to do |format|
      format.html { redirect_to tax_brackets_url, notice: "Tax bracket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_bracket
      @tax_bracket = TaxBracket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tax_bracket_params
      params.require(:tax_bracket).permit(:level, :rate)
    end
end
