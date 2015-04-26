require 'rails_helper'

RSpec.describe Donation, type: :model do

  describe '#thanks_message' do

    context 'given amount less than or equal to 10' do
      it 'returns "Every penny counts!" message' do
        donation = Donation.new(amount: -5)
        expect(donation.thanks_message).to eq('Every penny counts!')

        donation = Donation.new(amount: 10)
        expect(donation.thanks_message).to eq('Every penny counts!')
      end
    end

    context 'given amount greater than 10 and less than or equal to 50' do
      it 'returns "Aww... That is nice!" message' do
        donation = Donation.new(amount: 11)
        expect(donation.thanks_message).to eq('Aww... That is nice!')

        donation = Donation.new(amount: 50)
        expect(donation.thanks_message).to eq('Aww... That is nice!')
      end
    end

    context 'given amount greater than 50' do
      it 'returns "<3 <3 <3" message' do
        donation = Donation.new(amount: 11)
        expect(donation.thanks_message).to eq('<3 <3 <3')

        donation = Donation.new(amount: 50)
        expect(donation.thanks_message).to eq('<3 <3 <3')
      end
    end

  end

end