require 'rails_helper'
require 'spec_helper'
require 'shoulda/matchers'

RSpec.describe Article, type: :model do
  let(:topic) { create(:topic) }
  let(:language) { create(:language) }

  context 'validation' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:source) }
  end

  context 'associations' do
    it { should belong_to(:topic) }
    it { should belong_to(:language) }
  end
end
