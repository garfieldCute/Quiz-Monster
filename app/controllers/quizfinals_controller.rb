class QuizfinalsController < ApplicationController
  # GET /quizfinals
  # GET /quizfinals.xml
  def index
    @quizfinals = Quizfinal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quizfinals }
    end
  end

  # GET /quizfinals/1
  # GET /quizfinals/1.xml
  def show
    @quizfinal = Quizfinal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quizfinal }
    end
  end

  # GET /quizfinals/new
  # GET /quizfinals/new.xml
  def new
    @quizfinal = Quizfinal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quizfinal }
    end
  end

  # GET /quizfinals/1/edit
  def edit
    @quizfinal = Quizfinal.find(params[:id])
  end

  # POST /quizfinals
  # POST /quizfinals.xml
  def create
    @quizfinal = Quizfinal.new(params[:quizfinal])

    respond_to do |format|
      if @quizfinal.save
        format.html { redirect_to(@quizfinal, :notice => 'Quizfinal was successfully created.') }
        format.xml  { render :xml => @quizfinal, :status => :created, :location => @quizfinal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quizfinal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quizfinals/1
  # PUT /quizfinals/1.xml
  def update
    @quizfinal = Quizfinal.find(params[:id])

    respond_to do |format|
      if @quizfinal.update_attributes(params[:quizfinal])
        format.html { redirect_to(@quizfinal, :notice => 'Quizfinal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quizfinal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quizfinals/1
  # DELETE /quizfinals/1.xml
  def destroy
    @quizfinal = Quizfinal.find(params[:id])
    @quizfinal.destroy

    respond_to do |format|
      format.html { redirect_to(quizfinals_url) }
      format.xml  { head :ok }
    end
  end
end
