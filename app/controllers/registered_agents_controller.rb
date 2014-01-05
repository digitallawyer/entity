class RegisteredAgentsController < ApplicationController
  before_action :set_registered_agent, only: [:show, :edit, :update, :destroy]

  # GET /registered_agents
  # GET /registered_agents.json
  def index
    @registered_agents = RegisteredAgent.all
  end

  # GET /registered_agents/1
  # GET /registered_agents/1.json
  def show
  end

  # GET /registered_agents/new
  def new
    @registered_agent = RegisteredAgent.new
  end

  # GET /registered_agents/1/edit
  def edit
  end

  # POST /registered_agents
  # POST /registered_agents.json
  def create
    @registered_agent = RegisteredAgent.new(registered_agent_params)

    respond_to do |format|
      if @registered_agent.save
        format.html { redirect_to @registered_agent, notice: 'Registered agent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @registered_agent }
      else
        format.html { render action: 'new' }
        format.json { render json: @registered_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registered_agents/1
  # PATCH/PUT /registered_agents/1.json
  def update
    respond_to do |format|
      if @registered_agent.update(registered_agent_params)
        format.html { redirect_to @registered_agent, notice: 'Registered agent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @registered_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registered_agents/1
  # DELETE /registered_agents/1.json
  def destroy
    @registered_agent.destroy
    respond_to do |format|
      format.html { redirect_to registered_agents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registered_agent
      @registered_agent = RegisteredAgent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registered_agent_params
      params.require(:registered_agent).permit(:name, :address_line_1, :address_line_2, :city, :state, :postal_code, :country)
    end
end
