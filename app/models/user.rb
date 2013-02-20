class User < ActiveRecord::Base
  attr_accessible :name, :user_id

  validates :name, :presence=>true, :uniqueness=>true
  validates :user_id, :presence=>true, :uniqueness=>true
end
