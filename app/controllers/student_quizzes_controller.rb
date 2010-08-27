class StudentQuizzesController < ApplicationController
  # GET /student_quizzes
  # GET /student_quizzes.xml
  def index
    @student_quizzes = StudentQuiz.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_quizzes }
    end
  end

  # GET /student_quizzes/1
  # GET /student_quizzes/1.xml
  def show
    @student_quiz = StudentQuiz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_quiz }
    end
  end

  # GET /student_quizzes/new
  # GET /student_quizzes/new.xml
  def new
    @student_quiz = StudentQuiz.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_quiz }
    end
  end

  # GET /student_quizzes/1/edit
  def edit
    @student_quiz = StudentQuiz.find(params[:id])
  end

  # POST /student_quizzes
  # POST /student_quizzes.xml
  def create
    @student_quiz = StudentQuiz.new(params[:student_quiz])

    respond_to do |format|
      if @student_quiz.save
        format.html { redirect_to(@student_quiz, :notice => 'StudentQuiz was successfully created.') }
        format.xml  { render :xml => @student_quiz, :status => :created, :location => @student_quiz }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_quiz.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_quizzes/1
  # PUT /student_quizzes/1.xml
  def update
    @student_quiz = StudentQuiz.find(params[:id])

    respond_to do |format|
      if @student_quiz.update_attributes(params[:student_quiz])
        format.html { redirect_to(@student_quiz, :notice => 'StudentQuiz was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_quiz.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_quizzes/1
  # DELETE /student_quizzes/1.xml
  def destroy
    @student_quiz = StudentQuiz.find(params[:id])
    @student_quiz.destroy

    respond_to do |format|
      format.html { redirect_to(student_quizzes_url) }
      format.xml  { head :ok }
    end
  end
end
