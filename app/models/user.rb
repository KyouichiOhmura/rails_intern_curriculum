class User < ActiveRecord::Base
  attr_accessible :name, :user_id

  validates :name, :presence=>true
  validates :user_id, :presence=>true


end
