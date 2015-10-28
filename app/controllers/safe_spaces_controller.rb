class SafeSpacesController < ApplicationController
  before_action :set_safe_space, only: [:show, :edit, :update, :destroy]

  # GET /safe_spaces
  # GET /safe_spaces.json
  def index
    @safe_spaces = SafeSpace.all
  end

  # GET /safe_spaces/1
  # GET /safe_spaces/1.json
  def show
  end

  # GET /safe_spaces/new
  def new
    @safe_space = SafeSpace.new
  end

  # GET /safe_spaces/1/edit
  def edit
  end

  # POST /safe_spaces
  # POST /safe_spaces.json
  def create
    @safe_space = SafeSpace.new(safe_space_params)

    respond_to do |format|
      if @safe_space.save
        format.html { redirect_to @safe_space, notice: 'Safe space was successfully created.' }
        format.json { render :show, status: :created, location: @safe_space }
      else
        format.html { render :new }
        format.json { render json: @safe_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /safe_spaces/1
  # PATCH/PUT /safe_spaces/1.json
  def update
    respond_to do |format|
      if @safe_space.update(safe_space_params)
        format.html { redirect_to @safe_space, notice: 'Safe space was successfully updated.' }
        format.json { render :show, status: :ok, location: @safe_space }
      else
        format.html { render :edit }
        format.json { render json: @safe_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /safe_spaces/1
  # DELETE /safe_spaces/1.json
  def destroy
    @safe_space.destroy
    respond_to do |format|
      format.html { redirect_to safe_spaces_url, notice: 'Safe space was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_safe_space
      @safe_space = SafeSpace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def safe_space_params
      params.require(:safe_space).permit(:contact_name, :contact_phone, :address, :suburb, :state, :postcode, :country, :latitude, :longitude, :contact_email)
    end
end
