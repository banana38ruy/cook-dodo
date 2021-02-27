class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.includes(:user)
    @recipes = Recipe.all.order(id: :DESC)
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @materials = @recipe.materials
    @cooks = @recipe.cooks
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    # @material = @recipe.materials.build
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)
    # @recipe.materials = params[:material_id]
    # @material = @recipe.materials.build
    # respond_to do |format|
    if @recipe.save
      redirect_to @recipe
      # format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
      # format.json { render :show, status: :created, location: @recipe }
    else
      render :new
      # format.html { render :new }
      # format.json { render json: @recipe.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def recipe_params
      params.require(:recipe).permit(:title, :image,
                                      materials_attributes: [:id, :name, :quantity, :recipe_id, :_destroy],
                                      cooks_attributes: [:id, :content, :cooking_image, :recipe_id, :_destroy]).merge(user_id: current_user.id)
    end
end


# def recipe_params
#   params.require(:recipe).permit(:title, :image,
#                                   materials_attributes: [:id, :material_name, :quantity_name, :recipe_id, :_destroy,
#                                     cooks_attributes: [:id, :content, :cooking_image, :material_id, :_destroy]]).merge(user_id: current_user.id)
# end
