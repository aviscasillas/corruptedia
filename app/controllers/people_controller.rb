class PeopleController < ApplicationController

  respond_to :json

  #before_filter :authenticate_user!, :except => :show
  before_filter :find_person, :except => [:index, :new, :create]
  before_filter :new_person, :only => [:new, :create]

  def index
    respond_with Person.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @person.save
      redirect_to @person, :notice => 'Person was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    if @person.update_attributes(params[:person])
      redirect_to @person, :notice => 'Person was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @person.destroy
    redirect_to people_url
  end

  protected

  def find_person
    respond_with Person.find(params[:id])
  end

  def new_person
    respond_with Person.new(params[:person])
  end

end
