require 'rails_helper'

RSpec.describe Group, type: :model do

  it { should validate_presence_of(:name) }

end
