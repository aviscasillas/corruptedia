class CorruptsController < ApplicationController
  before_filter :authenticate_user!

  # GET /corrupts
  # GET /corrupts.json
  def index
    @corrupts = Corrupt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @corrupts }
    end
  end

  # GET /corrupts/1
  # GET /corrupts/1.json
  def show
    @corrupt = Corrupt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @corrupt }
    end
  end

  # GET /corrupts/new
  # GET /corrupts/new.json
  def new
    @corrupt = Corrupt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @corrupt }
    end
  end

  # GET /corrupts/1/edit
  def edit
    @corrupt = Corrupt.find(params[:id])
  end

  # POST /corrupts
  # POST /corrupts.json
  def create
    @corrupt = Corrupt.new(params[:corrupt])

    respond_to do |format|
      if @corrupt.save
        format.html { redirect_to @corrupt, :notice => 'Corrupt was successfully created.' }
        format.json { render :json => @corrupt, :status => :created, :location => @corrupt }
      else
        format.html { render :action => "new" }
        format.json { render :json => @corrupt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /corrupts/1
  # PUT /corrupts/1.json
  def update
    @corrupt = Corrupt.find(params[:id])

    respond_to do |format|
      if @corrupt.update_attributes(params[:corrupt])
        format.html { redirect_to @corrupt, :notice => 'Corrupt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @corrupt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corrupts/1
  # DELETE /corrupts/1.json
  def destroy
    @corrupt = Corrupt.find(params[:id])
    @corrupt.destroy

    respond_to do |format|
      format.html { redirect_to corrupts_url }
      format.json { head :no_content }
    end
  end
end
