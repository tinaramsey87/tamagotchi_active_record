require 'spec_buddy'

describe User do
  it { should have_and_belong_to_many :tamagotchis }

end
