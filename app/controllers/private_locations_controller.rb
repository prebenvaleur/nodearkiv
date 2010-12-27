class PrivateLocationsController < ApplicationController
  # GET /private_locations
  # GET /private_locations.xml
  def index
    @private_locations = PrivateLocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @private_locations }
    end
  end

  # GET /private_locations/1
  # GET /private_locations/1.xml
  def show
    @private_location = PrivateLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @private_location }
    end
  end

  # GET /private_locations/new
  # GET /private_locations/new.xml
  def new
    @private_location = PrivateLocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @private_location }
    end
  end

  # GET /private_locations/1/edit
  def edit
    @private_location = PrivateLocation.find(params[:id])
  end

  # POST /private_locations
  # POST /private_locations.xml
  def create
    @private_location = PrivateLocation.new(params[:private_location])

    respond_to do |format|
      if @private_location.save
        format.html { redirect_to(@private_location, :notice => 'Private location was successfully created.') }
        format.xml  { render :xml => @private_location, :status => :created, :location => @private_location }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @private_location.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /private_locations/1
  # PUT /private_locations/1.xml
  def update
    @private_location = PrivateLocation.find(params[:id])

    respond_to do |format|
      if @private_location.update_attributes(params[:private_location])
        format.html { redirect_to(@private_location, :notice => 'Private location was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @private_location.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /private_locations/1
  # DELETE /private_locations/1.xml
  def destroy
    @private_location = PrivateLocation.find(params[:id])
    @private_location.destroy

    respond_to do |format|
      format.html { redirect_to(private_locations_url) }
      format.xml  { head :ok }
    end
  end
end
