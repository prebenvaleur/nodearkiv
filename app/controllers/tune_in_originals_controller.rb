class TuneInOriginalsController < ApplicationController
  # GET /tune_in_originals
  # GET /tune_in_originals.xml
  def index
    @tune_in_originals = TuneInOriginal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tune_in_originals }
    end
  end

  # GET /tune_in_originals/1
  # GET /tune_in_originals/1.xml
  def show
    @tune_in_original = TuneInOriginal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tune_in_original }
    end
  end

  # GET /tune_in_originals/new
  # GET /tune_in_originals/new.xml
  def new
    @tune_in_original = TuneInOriginal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tune_in_original }
    end
  end

  # GET /tune_in_originals/1/edit
  def edit
    @tune_in_original = TuneInOriginal.find(params[:id])
  end

  # POST /tune_in_originals
  # POST /tune_in_originals.xml
  def create
    @tune_in_original = TuneInOriginal.new(params[:tune_in_original])

    respond_to do |format|
      if @tune_in_original.save
        format.html { redirect_to(@tune_in_original, :notice => 'Tune in original was successfully created.') }
        format.xml  { render :xml => @tune_in_original, :status => :created, :location => @tune_in_original }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tune_in_original.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tune_in_originals/1
  # PUT /tune_in_originals/1.xml
  def update
    @tune_in_original = TuneInOriginal.find(params[:id])

    respond_to do |format|
      if @tune_in_original.update_attributes(params[:tune_in_original])
        format.html { redirect_to(@tune_in_original, :notice => 'Tune in original was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tune_in_original.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tune_in_originals/1
  # DELETE /tune_in_originals/1.xml
  def destroy
    @tune_in_original = TuneInOriginal.find(params[:id])
    @tune_in_original.destroy

    respond_to do |format|
      format.html { redirect_to(tune_in_originals_url) }
      format.xml  { head :ok }
    end
  end
end
