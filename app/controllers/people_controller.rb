class PeopleController < ApplicationController

  respond_to :json

  before_filter :find_person, :except => [:index, :new, :create]
  before_filter :new_person, :only => [:new, :create]

  def index
    respond_with Person.all, :include => :links
  end

  def show
    respond_with @person, :include => :links
  end

  def new
    respond_with @person, :include => :links
  end

  def edit
  end

  def create
    @person.save
    respond_with @person
  end

  def update
    @person.update_attributes(params[:person])
    respond_with @person
  end

  def destroy
    @person.destroy
    respond_with @person
  end

  protected

  def new_person
    @person = Person.new(params[:person])
  end

  def find_person
    @person = Person.find(params[:id])
  end

end
