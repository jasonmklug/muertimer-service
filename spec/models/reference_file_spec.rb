require 'rails_helper'

RSpec.describe ReferenceFile, type: :model do

  describe "associations" do
    it { should have_many :life_periods }
  end
end
