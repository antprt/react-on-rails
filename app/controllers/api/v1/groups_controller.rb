class Api::V1::GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.all.order(year: :desc)
    render json: @groups
  end

  # GET /groups/1 or /groups/1.json
  def show
    if @group
      render json: @group
    else
      render json: @group.errors
    end
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups or /groups.json
  def create
    @group = Group.new(group_params)

    if @group.save
      render json: @group
    else
      render json: @group.errors
    end
  end

  # PATCH/PUT /groups/1 or /groups/1.json
  def update
  end

  # DELETE /groups/1 or /groups/1.json
  def destroy
    @group.destroy
    render json: { notice: "Group was successfully destroyed." }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_params
      params.require(:group).permit(:name, :style, :author, :year, :coac_position, :image_url)
    end
end
