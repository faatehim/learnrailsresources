class PythonsController < ApplicationController
  def index
  	@pythons = Python.page(params[:page]).per(15)
  end

  def new
  	 @python = Python.new
  end

  def create
  	@python= Python.new(resources_params)

  	if @python.save
    	redirect_to pythons_path
    	flash[:alert] = "Successfully created new resource!"
    else
      render "new"
    end
    
  end

  def show
  	 @python = Python.where(:id => params[:id]).first
  end

  def edit
    @python = Python.where(:id => params[:id]).first
  end

  def update
    @python = Python.where(:id => params[:id]).first

    respond_to do |format|
      if @python.update_attributes(resources_params)
        format.html { redirect_to @python, :notice => 'Resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @python.errors, :status => :unprocessable_entity }
      end
      end
  end


  def destroy
 	@toDelete = Python.where(:id => params[:id]).first
 	puts @toDelete.id

    if @toDelete.destroy
      flash[:notice] = "Successfully deleted post!"
      redirect_to pythons_path
    else
      flash[:alert] = "Error updating post!"
    end
  end



  private

   def resources_params
 	    params.require(:python).permit(:title, :url, :description, :image, :tag, :shortdescription)
   end

end
