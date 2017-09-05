class LocationCategoriesController < ApplicationController
  before_action :set_location_category, only: [:show, :edit, :update, :destroy]

  # GET /location_categories
  # GET /location_categories.json
  def index
    @location_categories = LocationCategory.all
  end

  # GET /location_categories/1
  # GET /location_categories/1.json
  def show
  end

  # GET /location_categories/new
  def new
    @location_category = LocationCategory.new
  end

  # GET /location_categories/1/edit
  def edit
  end

  # POST /location_categories
  # POST /location_categories.json
  def create
    @location_category = LocationCategory.new(location_category_params)

    respond_to do |format|
      if @location_category.save
        format.html { redirect_to @location_category, notice: 'Location category was successfully created.' }
        format.json { render :show, status: :created, location: @location_category }
      else
        format.html { render :new }
        format.json { render json: @location_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /location_categories/1
  # PATCH/PUT /location_categories/1.json
  def update
    respond_to do |format|
      if @location_category.update(location_category_params)
        format.html { redirect_to @location_category, notice: 'Location category was successfully updated.' }
        format.json { render :show, status: :ok, location: @location_category }
      else
        format.html { render :edit }
        format.json { render json: @location_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /location_categories/1
  # DELETE /location_categories/1.json
  def destroy
    @location_category.destroy
    respond_to do |format|
      format.html { redirect_to location_categories_url, notice: 'Location category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_category
      @location_category = LocationCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_category_params
      params.require(:location_category).permit(:name, :description)
    end
end
