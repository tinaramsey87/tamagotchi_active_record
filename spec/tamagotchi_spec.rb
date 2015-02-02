require 'spec_buddy'

describe Tamagotchi do
  it { should have_and_belong_to_many :users }

end
