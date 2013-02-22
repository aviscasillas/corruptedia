class LinksController < ApplicationController

  respond_to :json

  before_filter :new_link, :only => [:new, :create]
  before_filter :find_link, :except => [:index, :new, :create]
  
  def index
    respond_with Link.all
  end

  def new
  end

  def create
    parent = eval(@link.parent_model).find(@link.parent_id)
    parent.links << @link
    respond_with @link
  end

  def destroy
    @link.destroy
    respond_with @link
  end

  protected

  def new_link
    @link = Link.new(params[:link])
  end

  def find_link
    @link = Link.find(params[:id])
  end
end
