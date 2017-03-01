class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all

    render("profiles/index.html.erb")
  end

  def show
    @profile = Profile.find(params[:id])

    render("profiles/show.html.erb")
  end

  def new
    @profile = Profile.new

    render("profiles/new.html.erb")
  end

  def create
    @profile = Profile.new

    @profile.user_id = params[:user_id]
    @profile.user_photo = params[:user_photo]
    @profile.bio = params[:bio]

    save_status = @profile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/profiles/new", "/create_profile"
        redirect_to("/profiles")
      else
        redirect_back(:fallback_location => "/", :notice => "Profile created successfully.")
      end
    else
      render("profiles/new.html.erb")
    end
  end

  def edit
    @profile = Profile.find(params[:id])

    render("profiles/edit.html.erb")
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.user_photo = params[:user_photo]
    @profile.bio = params[:bio]

    save_status = @profile.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/profiles/#{@profile.id}/edit", "/update_profile"
        redirect_to("/profiles/#{@profile.id}", :notice => "Profile updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Profile updated successfully.")
      end
    else
      render("profiles/edit.html.erb")
    end
  end

  def destroy
    @profile = Profile.find(params[:id])

    @profile.destroy

    if URI(request.referer).path == "/profiles/#{@profile.id}"
      redirect_to("/", :notice => "Profile deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Profile deleted.")
    end
  end
end
