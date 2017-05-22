require 'rails_helper'

RSpec.describe Couple, type: :model do
  it { should belong_to(:guess) }
end
