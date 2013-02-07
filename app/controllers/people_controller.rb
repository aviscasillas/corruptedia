class PeopleController < ApplicationController
  before_filter :authenticate_user!

  # GET /corrupts
  # GET /corrupts.json
  def index
    @people = Person.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @people }
    end
  end

  # GET /corrupts/1
  # GET /corrupts/1.json
  def show
    @person = Person.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @person }
    end
  end

  # GET /corrupts/new
  # GET /corrupts/new.json
  def new
    @person = Person.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @person }
    end
  end

  # GET /corrupts/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # POST /corrupts
  # POST /corrupts.json
  def create
    @person = Person.new(params[:person])

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, :notice => 'Person was successfully created.' }
        format.json { render :json => @person, :status => :created, :location => @person }
      else
        format.html { render :action => "new" }
        format.json { render :json => @person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /corrupts/1
  # PUT /corrupts/1.json
  def update
    @person = Person.find(params[:id])

    respond_to do |format|
      if @person.update_attributes(params[:person])
        format.html { redirect_to @person, :notice => 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corrupts/1
  # DELETE /corrupts/1.json
  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { head :no_content }
    end
  end
end
