class IncorporatorsController < ApplicationController
  before_action :set_incorporator, only: [:show, :edit, :update, :destroy]

  # GET /incorporators
  # GET /incorporators.json
  def index
    @incorporators = Incorporator.all
  end

  # GET /incorporators/1
  # GET /incorporators/1.json
  def show
  end

  # GET /incorporators/new
  def new
    @incorporator = Incorporator.new
  end

  # GET /incorporators/1/edit
  def edit
  end

  # POST /incorporators
  # POST /incorporators.json
  def create
    @incorporator = Incorporator.new(incorporator_params)

    respond_to do |format|
      if @incorporator.save
        format.html { redirect_to @incorporator, notice: 'Incorporator was successfully created.' }
        format.json { render action: 'show', status: :created, location: @incorporator }
      else
        format.html { render action: 'new' }
        format.json { render json: @incorporator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incorporators/1
  # PATCH/PUT /incorporators/1.json
  def update
    respond_to do |format|
      if @incorporator.update(incorporator_params)
        format.html { redirect_to @incorporator, notice: 'Incorporator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @incorporator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incorporators/1
  # DELETE /incorporators/1.json
  def destroy
    @incorporator.destroy
    respond_to do |format|
      format.html { redirect_to incorporators_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incorporator
      @incorporator = Incorporator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incorporator_params
      params.require(:incorporator).permit(:name, :address_line_1, :address_line_2, :city, :state, :postal_code, :country)
    end
end
