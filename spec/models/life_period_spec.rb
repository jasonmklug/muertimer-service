require 'rails_helper'

RSpec.describe LifePeriod, type: :model do

  describe "associations" do
    it { should belong_to :reference_file }
  end
end
