class LinksController < ApplicationController

  respond_to :json
  
  def index
    @links = Link.all
    respond_with @links
  end

  def create
    @link = Link.new(params[:link])
    parent = eval(@link.parent_model).find(@link.parent_id)
    parent.links << @link
    respond_with @link
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    respond_with @link
  end
end
