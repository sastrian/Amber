class IdeasInProjectsController < ApplicationController
  before_action :set_ideas_in_project, only: [:show, :edit, :update, :destroy]

  # GET /ideas_in_projects
  # GET /ideas_in_projects.json
  def index
    @ideas_in_projects = IdeasInProject.all
  end

  # GET /ideas_in_projects/1
  # GET /ideas_in_projects/1.json
  def show
  end

  # GET /ideas_in_projects/new
  def new
    @ideas_in_project = IdeasInProject.new
  end

  # GET /ideas_in_projects/1/edit
  def edit
  end

  # POST /ideas_in_projects
  # POST /ideas_in_projects.json
  def create
    @ideas_in_project = IdeasInProject.new(ideas_in_project_params)

    respond_to do |format|
      if @ideas_in_project.save
        format.html { redirect_to @ideas_in_project, notice: 'Ideas in project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ideas_in_project }
      else
        format.html { render action: 'new' }
        format.json { render json: @ideas_in_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideas_in_projects/1
  # PATCH/PUT /ideas_in_projects/1.json
  def update
    respond_to do |format|
      if @ideas_in_project.update(ideas_in_project_params)
        format.html { redirect_to @ideas_in_project, notice: 'Ideas in project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ideas_in_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas_in_projects/1
  # DELETE /ideas_in_projects/1.json
  def destroy
    @ideas_in_project.destroy
    respond_to do |format|
      format.html { redirect_to ideas_in_projects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ideas_in_project
      @ideas_in_project = IdeasInProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ideas_in_project_params
      params.require(:ideas_in_project).permit(:project_id, :idea_id)
    end
end
