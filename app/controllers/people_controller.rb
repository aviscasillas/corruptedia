class PeopleController < ApplicationController

  respond_to :json

  def index
    @people = Person.all
    respond_with @people, :include => :links
  end

  def show
    @person = get_person(params[:id])
    respond_with @person, :include => :links
  end

  def new
    @person = Person.new(params[:person])
    respond_with @person, :include => :links
  end

  def create
    @person = Person.create(params[:person])
    respond_with @person
  end

  def update
    @person = get_person(params[:id])
    respond_with @person.update_attributes(params[:person])
  end

  def destroy
    @person = get_person(params[:id])
    respond_with @person.destroy
  end

  private

  def get_person(person_id)
    Person.find(params[:id])
  end

end
