class SitesController < InheritedResources::Base
  helper_method :sort_column, :sort_direction
  
  def index
    @sites = Site.order(sort_column + " " + sort_direction)
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(params[:site])
    if @site.save
      redirect_to @site, :notice => "Successfully created site."
    else
      render :action => 'new'
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    @site = Site.find(params[:id])
    if @site.update_attributes(params[:site])
      redirect_to @site, :notice  => "Successfully updated site."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    redirect_to sites_url, :notice => "Successfully destroyed site."
  end

  def sort_column
    Site.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end