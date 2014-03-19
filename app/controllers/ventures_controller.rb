class VenturesController < ApplicationController
  before_action :set_venture, only: [:show, :edit, :update, :destroy]

  # GET /ventures
  # GET /ventures.json
  def index
    @ventures = Venture.all.order('created_at DESC')
  end

  # GET /ventures/1
  # GET /ventures/1.json
  def show
  end

  # GET /ventures/new
  def new
    @venture = Venture.new
  end

  # GET /ventures/1/edit
  def edit
  end

  # POST /ventures
  # POST /ventures.json
  def create
    
    @venture = current_user.ventures.build(venture_params) 
    respond_to do |format|
      if @venture.save
        format.html { redirect_to @venture, notice: 'Venture was successfully created.' }
        format.json { render action: 'show', status: :created, location: @venture }
      else
        format.html { render action: 'new' }
        format.json { render json: @venture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ventures/1
  # PATCH/PUT /ventures/1.json
  def update
    respond_to do |format|
      if @venture.update(venture_params)
        format.html { redirect_to @venture, notice: 'Venture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @venture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ventures/1
  # DELETE /ventures/1.json
  def destroy
    @venture.destroy
    respond_to do |format|
      format.html { redirect_to ventures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venture
      @venture = Venture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venture_params
      params.require(:venture).permit(:type_venture_ids, {:learning_language_ids => []}, :type_payment_ids, :user_id, :venture_name, :minimum_skill_ids, :about_venture)
    end
end
