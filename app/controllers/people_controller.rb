class PeopleController < ApplicationController

  respond_to :json

  #before_filter :authenticate_user!, :except => :show
  before_filter :find_person, :except => [:index, :new, :create]
  before_filter :new_person, :only => [:new, :create]

  def index
    respond_with Person.all
  end

  def show
    respond_with @person
  end

  def new
    respond_with @person
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

  def find_person
    @person = Person.find(params[:id])
  end

  def new_person
    @person = Person.new(params[:person])
  end

end
