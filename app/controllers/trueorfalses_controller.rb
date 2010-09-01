class TrueorfalsesController < ApplicationController
  # GET /trueorfalses
  # GET /trueorfalses.xml
  def index
    @trueorfalses = Trueorfalse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trueorfalses }
    end
  end

  # GET /trueorfalses/1
  # GET /trueorfalses/1.xml
  def show
    @trueorfalse = Trueorfalse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @trueorfalse }
    end
  end

  # GET /trueorfalses/new
  # GET /trueorfalses/new.xml
  def new
    @trueorfalse = Trueorfalse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trueorfalse }
    end
  end

  # GET /trueorfalses/1/edit
  def edit
    @trueorfalse = Trueorfalse.find(params[:id])
  end

  # POST /trueorfalses
  # POST /trueorfalses.xml
  def create
    @trueorfalse = Trueorfalse.new(params[:trueorfalse])

    respond_to do |format|
      if @trueorfalse.save
        format.html { redirect_to(@trueorfalse, :notice => 'Trueorfalse was successfully created.') }
        format.xml  { render :xml => @trueorfalse, :status => :created, :location => @trueorfalse }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trueorfalse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trueorfalses/1
  # PUT /trueorfalses/1.xml
  def update
    @trueorfalse = Trueorfalse.find(params[:id])

    respond_to do |format|
      if @trueorfalse.update_attributes(params[:trueorfalse])
        format.html { redirect_to(@trueorfalse, :notice => 'Trueorfalse was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trueorfalse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trueorfalses/1
  # DELETE /trueorfalses/1.xml
  def destroy
    @trueorfalse = Trueorfalse.find(params[:id])
    @trueorfalse.destroy

    respond_to do |format|
      format.html { redirect_to(trueorfalses_url) }
      format.xml  { head :ok }
    end
  end
end
