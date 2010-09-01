class QuizzsController < ApplicationController
  # GET /quizzs
  # GET /quizzs.xml
  def index
    @quizzs = Quizz.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quizzs }
    end
  end

  # GET /quizzs/1
  # GET /quizzs/1.xml
  def show
    @quizz = Quizz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quizz }
    end
  end

  # GET /quizzs/new
  # GET /quizzs/new.xml
  def new
    @quizz = Quizz.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quizz }
    end
  end

  # GET /quizzs/1/edit
  def edit
    @quizz = Quizz.find(params[:id])
  end

  # POST /quizzs
  # POST /quizzs.xml
  def create
    @quizz = Quizz.new(params[:quizz])

    respond_to do |format|
      if @quizz.save
        format.html { redirect_to(@quizz, :notice => 'Quizz was successfully created.') }
        format.xml  { render :xml => @quizz, :status => :created, :location => @quizz }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quizz.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quizzs/1
  # PUT /quizzs/1.xml
  def update
    @quizz = Quizz.find(params[:id])

    respond_to do |format|
      if @quizz.update_attributes(params[:quizz])
        format.html { redirect_to(@quizz, :notice => 'Quizz was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quizz.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzs/1
  # DELETE /quizzs/1.xml
  def destroy
    @quizz = Quizz.find(params[:id])
    @quizz.destroy

    respond_to do |format|
      format.html { redirect_to(quizzs_url) }
      format.xml  { head :ok }
    end
  end
end
