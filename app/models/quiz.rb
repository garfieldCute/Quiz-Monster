class Quiz < ActiveRecord::Base
  belongs_to :faculties
  has_many :questions
  belongs_to :questions
end
