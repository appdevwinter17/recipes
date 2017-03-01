class PhotosOfRecipesController < ApplicationController
  def index
    @photos_of_recipes = PhotosOfRecipe.all

    render("photos_of_recipes/index.html.erb")
  end

  def show
    @photos_of_recipe = PhotosOfRecipe.find(params[:id])

    render("photos_of_recipes/show.html.erb")
  end

  def new
    @photos_of_recipe = PhotosOfRecipe.new

    render("photos_of_recipes/new.html.erb")
  end

  def create
    @photos_of_recipe = PhotosOfRecipe.new

    @photos_of_recipe.recipe_id = params[:recipe_id]

    save_status = @photos_of_recipe.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/photos_of_recipes/new", "/create_photos_of_recipe"
        redirect_to("/photos_of_recipes")
      else
        redirect_back(:fallback_location => "/", :notice => "Photos of recipe created successfully.")
      end
    else
      render("photos_of_recipes/new.html.erb")
    end
  end

  def edit
    @photos_of_recipe = PhotosOfRecipe.find(params[:id])

    render("photos_of_recipes/edit.html.erb")
  end

  def update
    @photos_of_recipe = PhotosOfRecipe.find(params[:id])

    @photos_of_recipe.recipe_id = params[:recipe_id]

    save_status = @photos_of_recipe.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/photos_of_recipes/#{@photos_of_recipe.id}/edit", "/update_photos_of_recipe"
        redirect_to("/photos_of_recipes/#{@photos_of_recipe.id}", :notice => "Photos of recipe updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Photos of recipe updated successfully.")
      end
    else
      render("photos_of_recipes/edit.html.erb")
    end
  end

  def destroy
    @photos_of_recipe = PhotosOfRecipe.find(params[:id])

    @photos_of_recipe.destroy

    if URI(request.referer).path == "/photos_of_recipes/#{@photos_of_recipe.id}"
      redirect_to("/", :notice => "Photos of recipe deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Photos of recipe deleted.")
    end
  end
end
