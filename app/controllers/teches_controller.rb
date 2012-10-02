class TechesController < InheritedResources::Base
  helper_method :sort_column, :sort_direction
  
  def index
    @teches = Tech.order(sort_column + " " + sort_direction)
  end

  def show
    @tech = Tech.find(params[:id])
  end

  def new
    @tech = Tech.new
  end

  def create
    @tech = Tech.new(params[:tech])
    if @tech.save
      redirect_to @tech, :notice => "Successfully created tech."
    else
      render :action => 'new'
    end
  end

  def edit
    @tech = Tech.find(params[:id])
  end

  def update
    @tech = Tech.find(params[:id])
    if @tech.update_attributes(params[:tech])
      redirect_to @tech, :notice  => "Successfully updated tech."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @tech = Tech.find(params[:id])
    @tech.destroy
    redirect_to teches_url, :notice => "Successfully destroyed tech."
  end

  def sort_column
    Tech.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end