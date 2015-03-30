require 'rails_helper'

describe Yak do
  it { should validate_presence_of :body }
  it { should belong_to :user }
  it { should have_many :yak_backs }
end
