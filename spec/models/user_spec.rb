require 'rails_helper'

describe User do
  it { should have_many :yaks }
  it { should have_many :yak_backs }

end
