require 'rails_helper'

RSpec.describe Guess, type: :model do

  it { should belong_to(:episode) }
  it { should have_one(:couple) }

end
