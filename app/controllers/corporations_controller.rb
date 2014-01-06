class CorporationsController < ApplicationController
  before_action :set_corporation, only: [:show, :edit, :update, :destroy]

  # GET /corporations
  # GET /corporations.json
  def index
    @corporations = Corporation.all
  end

  # GET /corporations/1
  # GET /corporations/1.json
  def show
    @corporation = Corporation.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = CorporationSetup.new(@corporation)
        send_data pdf.render, filename: "Certificate of Incorporation #{@corporation.name}", type: "application/pdf", disposition: "inline"
      end
    end
  end

  # GET /corporations/new
  def new
    @corporation = Corporation.new
    @corporation.build_registered_agent
    @corporation.build_incorporator
  end

  # GET /corporations/1/edit
  def edit
  end

  # POST /corporations
  # POST /corporations.json
  def create
    @corporation = Corporation.new(corporation_params)

    respond_to do |format|
      if @corporation.save
        format.html { redirect_to @corporation }
        format.json { render action: 'show', status: :created, location: @corporation }

      else
        format.html { render action: 'new' }
        format.json { render json: @corporation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corporations/1
  # PATCH/PUT /corporations/1.json
  def update
    respond_to do |format|
      if @corporation.update(corporation_params)
        format.html { redirect_to @corporation, notice: 'Corporation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @corporation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corporations/1
  # DELETE /corporations/1.json
  def destroy
    @corporation.destroy
    respond_to do |format|
      format.html { redirect_to corporations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corporation
      @corporation = Corporation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corporation_params
      params.require(:corporation).permit(:id, :name, :extension, :share_number, :share_value, registered_agent_attributes: [:id, :name, :address_line_1, :address_line_2, :city, :state, :postal_code, :country], incorporator_attributes: [:id, :name, :address_line_1, :address_line_2, :city, :state, :postal_code, :country] )
    end
end
