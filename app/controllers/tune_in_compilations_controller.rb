class TuneInCompilationsController < ApplicationController
  # GET /tune_in_compilations
  # GET /tune_in_compilations.xml
  def index
    @tune_in_compilations = TuneInCompilation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tune_in_compilations }
    end
  end

  # GET /tune_in_compilations/1
  # GET /tune_in_compilations/1.xml
  def show
    @tune_in_compilation = TuneInCompilation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tune_in_compilation }
    end
  end

  # GET /tune_in_compilations/new
  # GET /tune_in_compilations/new.xml
  def new
    @tune_in_compilation = TuneInCompilation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tune_in_compilation }
    end
  end

  # GET /tune_in_compilations/1/edit
  def edit
    @tune_in_compilation = TuneInCompilation.find(params[:id])
  end

  # POST /tune_in_compilations
  # POST /tune_in_compilations.xml
  def create
    @tune_in_compilation = TuneInCompilation.new(params[:tune_in_compilation])

    respond_to do |format|
      if @tune_in_compilation.save
        format.html { redirect_to(@tune_in_compilation, :notice => 'Tune in compilation was successfully created.') }
        format.xml  { render :xml => @tune_in_compilation, :status => :created, :location => @tune_in_compilation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tune_in_compilation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tune_in_compilations/1
  # PUT /tune_in_compilations/1.xml
  def update
    @tune_in_compilation = TuneInCompilation.find(params[:id])

    respond_to do |format|
      if @tune_in_compilation.update_attributes(params[:tune_in_compilation])
        format.html { redirect_to(@tune_in_compilation, :notice => 'Tune in compilation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tune_in_compilation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tune_in_compilations/1
  # DELETE /tune_in_compilations/1.xml
  def destroy
    @tune_in_compilation = TuneInCompilation.find(params[:id])
    @tune_in_compilation.destroy

    respond_to do |format|
      format.html { redirect_to(tune_in_compilations_url) }
      format.xml  { head :ok }
    end
  end
end
