class PeersController < ApplicationController
  before_action :set_peer, only: [:show, :edit, :update, :destroy]

  # GET /peers
  # GET /peers.json
  def index
    @search = Peer.search(params[:q])
    

    @peer = @search.result.page(params[:page]).per(5).order('created_at DESC')
  
  end

  # GET /peers/1
  # GET /peers/1.json
  def show
  end

  # GET /peers/new
  def new
    @peer = Peer.new
  end

  # GET /peers/1/edit
  def edit
  end

  # POST /peers
  # POST /peers.json
  def create

    @peer = Peer.new(peer_params)
    @peer.user = current_user

    respond_to do |format|
      if @peer.save
        format.html { redirect_to @peer, notice: 'Peer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @peer }
      else
        format.html { render action: 'new' }
        format.json { render json: @peer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peers/1
  # PATCH/PUT /peers/1.json
  def update
    respond_to do |format|
      if @peer.update(peer_params)
        format.html { redirect_to @peer, notice: 'Peer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @peer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peers/1
  # DELETE /peers/1.json
  def destroy
    @peer.destroy
    respond_to do |format|
      format.html { redirect_to peers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peer
      @peer = Peer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peer_params
      params.require(:peer).permit(:user_id, :minimum_skill_ids, :about_me, {:known_language_ids => []}, :availability_ids, {:site_interest_ids => []}, :learning_language_ids)
    end
end
