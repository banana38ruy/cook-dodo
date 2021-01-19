class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    
    if @recipe.save
      
      redirect_to root_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :content, :material_name, :quantity_name, :quantity_id, :image).merge(user_id: current_user.id)
  end
end      

