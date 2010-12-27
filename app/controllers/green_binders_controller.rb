class GreenBindersController < ApplicationController
  # GET /green_binders
  # GET /green_binders.xml
  def index
    @green_binders = GreenBinder.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @green_binders }
    end
  end

  # GET /green_binders/1
  # GET /green_binders/1.xml
  def show
    @green_binder = GreenBinder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @green_binder }
    end
  end

  # GET /green_binders/new
  # GET /green_binders/new.xml
  def new
    @green_binder = GreenBinder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @green_binder }
    end
  end

  # GET /green_binders/1/edit
  def edit
    @green_binder = GreenBinder.find(params[:id])
  end

  # POST /green_binders
  # POST /green_binders.xml
  def create
    @green_binder = GreenBinder.new(params[:green_binder])

    respond_to do |format|
      if @green_binder.save
        format.html { redirect_to(@green_binder, :notice => 'Green binder was successfully created.') }
        format.xml  { render :xml => @green_binder, :status => :created, :location => @green_binder }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @green_binder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /green_binders/1
  # PUT /green_binders/1.xml
  def update
    @green_binder = GreenBinder.find(params[:id])

    respond_to do |format|
      if @green_binder.update_attributes(params[:green_binder])
        format.html { redirect_to(@green_binder, :notice => 'Green binder was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @green_binder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /green_binders/1
  # DELETE /green_binders/1.xml
  def destroy
    @green_binder = GreenBinder.find(params[:id])
    @green_binder.destroy

    respond_to do |format|
      format.html { redirect_to(green_binders_url) }
      format.xml  { head :ok }
    end
  end
end
