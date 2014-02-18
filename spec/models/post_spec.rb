require 'spec_helper'

describe Post do
  describe "associations" do
    it { should belong_to(:user) }
  end

  context "without post attributes" do
    let(:bad_post){ user = User.new}

    it "validates presence of title" do
      expect(:bad_post).to have_at_least(1).error_on(:title)
    end
  end
end
