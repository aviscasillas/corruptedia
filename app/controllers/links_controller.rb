class LinksController < ApplicationController
  before_filter :new_link, :only => [:new, :create]
  
  def index
    @links = Link.all
  end

  def new
  end

  def create

    if @link.save
      redirect_to @link, :notice => 'Person was successfully created.'
    else
      render :action => "new"
    end
  end

  protected

  def new_link
    @link = Link.new(params[:link])
  end
end
