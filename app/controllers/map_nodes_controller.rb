class MapNodesController < ApplicationController
  before_action :set_map_node, only: [:show, :edit, :update, :destroy]

  # GET /map_nodes
  # GET /map_nodes.json
  def index
    @map_nodes = MapNode.all
  end

  # GET /map_nodes/1
  # GET /map_nodes/1.json
  def show
  end

  # GET /map_nodes/new
  def new
    @map_node = MapNode.new
  end

  # GET /map_nodes/1/edit
  def edit
  end

  # POST /map_nodes
  # POST /map_nodes.json
  def create
    @map_node = MapNode.new(map_node_params)

    respond_to do |format|
      if @map_node.save
        format.html { redirect_to @map_node, notice: 'Map node was successfully created.' }
        format.json { render :show, status: :created, location: @map_node }
      else
        format.html { render :new }
        format.json { render json: @map_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /map_nodes/1
  # PATCH/PUT /map_nodes/1.json
  def update
    respond_to do |format|
      if @map_node.update(map_node_params)
        format.html { redirect_to @map_node, notice: 'Map node was successfully updated.' }
        format.json { render :show, status: :ok, location: @map_node }
      else
        format.html { render :edit }
        format.json { render json: @map_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_nodes/1
  # DELETE /map_nodes/1.json
  def destroy
    @map_node.destroy
    respond_to do |format|
      format.html { redirect_to map_nodes_url, notice: 'Map node was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map_node
      @map_node = MapNode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def map_node_params
      params.require(:map_node).permit(:degree, :title, :content, :rating, :audio_path, :path)
    end
end
