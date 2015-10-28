class ExperienceTypesController < ApplicationController
  before_action :set_experience_type, only: [:show, :edit, :update, :destroy]

  # GET /experience_types
  # GET /experience_types.json
  def index
    @experience_types = ExperienceType.all
  end

  # GET /experience_types/1
  # GET /experience_types/1.json
  def show
  end

  # GET /experience_types/new
  def new
    @experience_type = ExperienceType.new
  end

  # GET /experience_types/1/edit
  def edit
  end

  # POST /experience_types
  # POST /experience_types.json
  def create
    @experience_type = ExperienceType.new(experience_type_params)

    respond_to do |format|
      if @experience_type.save
        format.html { redirect_to @experience_type, notice: 'Experience type was successfully created.' }
        format.json { render :show, status: :created, location: @experience_type }
      else
        format.html { render :new }
        format.json { render json: @experience_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experience_types/1
  # PATCH/PUT /experience_types/1.json
  def update
    respond_to do |format|
      if @experience_type.update(experience_type_params)
        format.html { redirect_to @experience_type, notice: 'Experience type was successfully updated.' }
        format.json { render :show, status: :ok, location: @experience_type }
      else
        format.html { render :edit }
        format.json { render json: @experience_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experience_types/1
  # DELETE /experience_types/1.json
  def destroy
    @experience_type.destroy
    respond_to do |format|
      format.html { redirect_to experience_types_url, notice: 'Experience type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience_type
      @experience_type = ExperienceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_type_params
      params.require(:experience_type).permit(:name, :description)
    end
end
