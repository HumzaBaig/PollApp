# == Schema Information
#
# Table name: questions
#
#  id      :integer          not null, primary key
#  text    :string           not null
#  poll_id :integer          not null
#

class Question < ActiveRecord::Base
  validates :poll_id, presence: true

  belongs_to :poll,
  primary_key: :id,
  foreign_key: :poll_id,
  class_name: :Poll

  has_many :answer_choices,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :AnswerChoice

end
