class CompilationsController < ApplicationController
  # GET /compilations
  # GET /compilations.xml
  def index
    @compilations = Compilation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @compilations }
    end
  end

  # GET /compilations/1
  # GET /compilations/1.xml
  def show
    @compilation = Compilation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @compilation }
    end
  end

  # GET /compilations/new
  # GET /compilations/new.xml
  def new
    @compilation = Compilation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @compilation }
    end
  end

  # GET /compilations/1/edit
  def edit
    @compilation = Compilation.find(params[:id])
  end

  # POST /compilations
  # POST /compilations.xml
  def create
    @compilation = Compilation.new(params[:compilation])

    respond_to do |format|
      if @compilation.save
        format.html { redirect_to(@compilation, :notice => 'Compilation was successfully created.') }
        format.xml  { render :xml => @compilation, :status => :created, :location => @compilation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @compilation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /compilations/1
  # PUT /compilations/1.xml
  def update
    @compilation = Compilation.find(params[:id])

    respond_to do |format|
      if @compilation.update_attributes(params[:compilation])
        format.html { redirect_to(@compilation, :notice => 'Compilation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @compilation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /compilations/1
  # DELETE /compilations/1.xml
  def destroy
    @compilation = Compilation.find(params[:id])
    @compilation.destroy

    respond_to do |format|
      format.html { redirect_to(compilations_url) }
      format.xml  { head :ok }
    end
  end
end
