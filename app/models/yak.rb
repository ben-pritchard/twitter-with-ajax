class Yak < ActiveRecord::Base
  belongs_to :user
  has_many :yak_backs
  validates :body, :presence => true
end
