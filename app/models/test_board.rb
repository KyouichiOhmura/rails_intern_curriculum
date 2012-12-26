class TestBoard < ActiveRecord::Base
  attr_accessible :comment, :d_time, :id, :title, :user_id

  validates :comment, :presence => true
  validates :title, :presence=>true
  validates :user_id, :presence=>true
end
