class MultiplechoicesController < ApplicationController
  # GET /multiplechoices
  # GET /multiplechoices.xml
  def index
    @multiplechoices = Multiplechoice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @multiplechoices }
    end
  end

  # GET /multiplechoices/1
  # GET /multiplechoices/1.xml
  def show
    @multiplechoice = Multiplechoice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @multiplechoice }
    end
  end

  # GET /multiplechoices/new
  # GET /multiplechoices/new.xml
  def new
    @multiplechoice = Multiplechoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @multiplechoice }
    end
  end

  # GET /multiplechoices/1/edit
  def edit
    @multiplechoice = Multiplechoice.find(params[:id])
  end

  # POST /multiplechoices
  # POST /multiplechoices.xml
  def create
    @multiplechoice = Multiplechoice.new(params[:multiplechoice])

    respond_to do |format|
      if @multiplechoice.save
        format.html { redirect_to(@multiplechoice, :notice => 'Multiplechoice was successfully created.') }
        format.xml  { render :xml => @multiplechoice, :status => :created, :location => @multiplechoice }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @multiplechoice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /multiplechoices/1
  # PUT /multiplechoices/1.xml
  def update
    @multiplechoice = Multiplechoice.find(params[:id])

    respond_to do |format|
      if @multiplechoice.update_attributes(params[:multiplechoice])
        format.html { redirect_to(@multiplechoice, :notice => 'Multiplechoice was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @multiplechoice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /multiplechoices/1
  # DELETE /multiplechoices/1.xml
  def destroy
    @multiplechoice = Multiplechoice.find(params[:id])
    @multiplechoice.destroy

    respond_to do |format|
      format.html { redirect_to(multiplechoices_url) }
      format.xml  { head :ok }
    end
  end
end
