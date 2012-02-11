class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :application

  validates :no_comment, :presence => true, :if => "!vote?"

  validates_uniqueness_of :user_id, :scope => :application_id
end
