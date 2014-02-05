class IdeaItemsController < ApplicationController
  before_action :set_idea_item, only: [:show, :edit, :update, :destroy]

  # GET /idea_items
  # GET /idea_items.json
  def index
    @idea_items = IdeaItem.all
  end

  # GET /idea_items/1
  # GET /idea_items/1.json
  def show
  end

  # GET /idea_items/new
  def new
    @idea_item = IdeaItem.new
  end

  # GET /idea_items/1/edit
  def edit
  end

  # POST /idea_items
  # POST /idea_items.json
  def create
    @idea_item = IdeaItem.new(idea_item_params)

    respond_to do |format|
      if @idea_item.save
        format.html { redirect_to @idea_item, notice: 'Idea item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @idea_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @idea_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idea_items/1
  # PATCH/PUT /idea_items/1.json
  def update
    respond_to do |format|
      if @idea_item.update(idea_item_params)
        format.html { redirect_to @idea_item, notice: 'Idea item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @idea_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idea_items/1
  # DELETE /idea_items/1.json
  def destroy
    @idea_item.destroy
    respond_to do |format|
      format.html { redirect_to idea_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea_item
      @idea_item = IdeaItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idea_item_params
      params.require(:idea_item).permit(:rank, :idea_id, :title)
    end
end
