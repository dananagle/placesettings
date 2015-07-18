class Pattern < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :website
  validates_presence_of :user_id
  belongs_to :user_id


end
