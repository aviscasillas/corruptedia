class PeopleController < ApplicationController
  before_filter :authenticate_user!, :except => :show
  before_filter :find_person, :except => [:index, :new, :create]
  before_filter :new_person, :only => [:new, :create]

  def index
    @people = Person.all
  end

  def show
    @links = @person.links
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
    @person = Person.find(params[:id])
  end

  def new_person
    @person = Person.new(params[:person])
  end

end
