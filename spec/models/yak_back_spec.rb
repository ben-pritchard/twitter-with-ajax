require 'rails_helper'

describe YakBack do
  it { should validate_presence_of :reply }
  it { should belong_to :yak }
  it { should belong_to :user }
end
