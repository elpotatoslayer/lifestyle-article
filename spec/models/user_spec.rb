require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validations' do
    subject { described_class.new(name: 'Someone') }

    it 'is valid with a valid name' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end

  context 'Associations' do
    it { should have_many(:articles) }
    it { should have_many(:votes) }
  end
end
