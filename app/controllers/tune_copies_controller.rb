class TuneCopiesController < ApplicationController
  # GET /tune_copies
  # GET /tune_copies.xml
  def index
    @tune_copies = TuneCopy.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tune_copies }
    end
  end

  # GET /tune_copies/1
  # GET /tune_copies/1.xml
  def show
    @tune_copy = TuneCopy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tune_copy }
    end
  end

  # GET /tune_copies/new
  # GET /tune_copies/new.xml
  def new
    @tune_copy = TuneCopy.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tune_copy }
    end
  end

  # GET /tune_copies/1/edit
  def edit
    @tune_copy = TuneCopy.find(params[:id])
  end

  # POST /tune_copies
  # POST /tune_copies.xml
  def create
    @tune_copy = TuneCopy.new(params[:tune_copy])

    respond_to do |format|
      if @tune_copy.save
        format.html { redirect_to(@tune_copy, :notice => 'Tune copy was successfully created.') }
        format.xml  { render :xml => @tune_copy, :status => :created, :location => @tune_copy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tune_copy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tune_copies/1
  # PUT /tune_copies/1.xml
  def update
    @tune_copy = TuneCopy.find(params[:id])

    respond_to do |format|
      if @tune_copy.update_attributes(params[:tune_copy])
        format.html { redirect_to(@tune_copy, :notice => 'Tune copy was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tune_copy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tune_copies/1
  # DELETE /tune_copies/1.xml
  def destroy
    @tune_copy = TuneCopy.find(params[:id])
    @tune_copy.destroy

    respond_to do |format|
      format.html { redirect_to(tune_copies_url) }
      format.xml  { head :ok }
    end
  end
end
