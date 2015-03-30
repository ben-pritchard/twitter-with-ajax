class YakBack < ActiveRecord::Base
  belongs_to :user
  belongs_to :yak
  validates :reply, :presence => true
end
