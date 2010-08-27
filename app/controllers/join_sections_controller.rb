class JoinSectionsController < ApplicationController
  # GET /join_sections
  # GET /join_sections.xml
  def index
    @join_sections = JoinSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @join_sections }
    end
  end

  # GET /join_sections/1
  # GET /join_sections/1.xml
  def show
    @join_section = JoinSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @join_section }
    end
  end

  # GET /join_sections/new
  # GET /join_sections/new.xml
  def new
    @join_section = JoinSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @join_section }
    end
  end

  # GET /join_sections/1/edit
  def edit
    @join_section = JoinSection.find(params[:id])
  end

  # POST /join_sections
  # POST /join_sections.xml
  def create
    @join_section = JoinSection.new(params[:join_section])

    respond_to do |format|
      if @join_section.save
        format.html { redirect_to(@join_section, :notice => 'JoinSection was successfully created.') }
        format.xml  { render :xml => @join_section, :status => :created, :location => @join_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @join_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /join_sections/1
  # PUT /join_sections/1.xml
  def update
    @join_section = JoinSection.find(params[:id])

    respond_to do |format|
      if @join_section.update_attributes(params[:join_section])
        format.html { redirect_to(@join_section, :notice => 'JoinSection was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @join_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /join_sections/1
  # DELETE /join_sections/1.xml
  def destroy
    @join_section = JoinSection.find(params[:id])
    @join_section.destroy

    respond_to do |format|
      format.html { redirect_to(join_sections_url) }
      format.xml  { head :ok }
    end
  end
end
