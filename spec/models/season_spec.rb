require 'rails_helper'

RSpec.describe Season, type: :model do

  it { should belong_to(:user) }
  it { should have_many(:episodes) }

end
