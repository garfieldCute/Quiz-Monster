class QuizreportController < ApplicationController
  def index
    @gradeaverage = StudentGrade.average(:grade)
    @grademax = StudentGrade.maximum(:grade)
    @grademin = StudentGrade.minimum(:grade)
    
  end

end
