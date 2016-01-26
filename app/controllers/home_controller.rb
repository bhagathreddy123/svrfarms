class HomeController < ApplicationController
  def index
  end

  def main_home
  end

  def land
  end

  def land1
  end

  def about_us
  end

  def privacy_policy
  end

  def gallery
  end

  def image_slide
  end

  def jointventure
  end

  def map_options
  end

  def list_property
  end

  def help
  end

  def requirement
    if request.post?
      Contact.send_contact(params[:selectreq],params[:selectcity], params[:username], params[:email], params[:usrtel], params[:req]).deliver
      flash[:notice] = "your Requirement has been successfuly submited"
      redirect_to '/'
    else
      render :partial => "requirement"
    end
  end

end




