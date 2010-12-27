class CasettesController < ApplicationController
  # GET /casettes
  # GET /casettes.xml
  def index
    @casettes = Casette.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @casettes }
    end
  end

  # GET /casettes/1
  # GET /casettes/1.xml
  def show
    @casette = Casette.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @casette }
    end
  end

  # GET /casettes/new
  # GET /casettes/new.xml
  def new
    @casette = Casette.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @casette }
    end
  end

  # GET /casettes/1/edit
  def edit
    @casette = Casette.find(params[:id])
  end

  # POST /casettes
  # POST /casettes.xml
  def create
    @casette = Casette.new(params[:casette])

    respond_to do |format|
      if @casette.save
        format.html { redirect_to(@casette, :notice => 'Casette was successfully created.') }
        format.xml  { render :xml => @casette, :status => :created, :location => @casette }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @casette.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /casettes/1
  # PUT /casettes/1.xml
  def update
    @casette = Casette.find(params[:id])

    respond_to do |format|
      if @casette.update_attributes(params[:casette])
        format.html { redirect_to(@casette, :notice => 'Casette was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @casette.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /casettes/1
  # DELETE /casettes/1.xml
  def destroy
    @casette = Casette.find(params[:id])
    @casette.destroy

    respond_to do |format|
      format.html { redirect_to(casettes_url) }
      format.xml  { head :ok }
    end
  end
end
