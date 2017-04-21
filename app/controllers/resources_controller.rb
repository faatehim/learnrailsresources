class ResourcesController < ApplicationController

  def index
  	@resources = Resource.page(params[:page]).per(15)
  end


  def show
        @resource = Resource.where(:id => params[:id]).first
  end

  def edit
    @resource = Resource.where(:id => params[:id]).first
  end

  def new
  	@resource = Resource.new
  end


  def update
    @resource = Resource.where(:id => params[:id]).first

    respond_to do |format|
      if @resource.update_attributes(params[:resource])
        format.html { redirect_to @resource, :notice => 'Resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resource.errors, :status => :unprocessable_entity }
      end
    end
  end


  def destroy
    @resource = Resource.where(:id => params[:id]).first
  	@resource.destroy

  respond_to do |format|
    format.html { redirect_to resource_url }
    format.json { head :no_content }
  end
end



  def create
  	@resource= Resource.new

  	if @resource.save
    	redirect_to root_path
     else
       render "new"
     end
    end

end
