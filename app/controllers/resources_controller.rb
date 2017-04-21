class ResourcesController < ApplicationController
  def index
  	@resources = Resource.page(params[:page]).per(15)
  end


  def show
       @resource = Resource.last
  end

  def edit
    @product = Product.where(:id => params[:id]).first
  end

  def new
  	@resource = Resource.new
  end



  def create
  	@resource= Resource.new(params.require(:resource).permit(:title, :description, :url))

  	if @resource.save
    	redirect_to root_path
     else
     render "new"
  end
end

end
