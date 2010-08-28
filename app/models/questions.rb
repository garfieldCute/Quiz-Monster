class Questions < ActiveRecord::Base
  belongs_to :quizzes
  has_many :choices
end
