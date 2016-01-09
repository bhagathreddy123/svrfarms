class ContactusController < ApplicationController
  def new
    @contactu = Contactu.new
  end

  def create
    @contactu = Contactu.new(contactu_params)
    if @contactu.save
      redirect_to :back
    else
      render :new
    end
  end

private

def contactu_params
  params.require(:contactu).permit!
end

end
