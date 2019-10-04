require 'rails_helper'

describe User do

subject{ User.create! }
let(:other_user){ User.create!}


it{ is_expected.to respond_to :twets}


describe '.feed' do 
it 'responds' do
expect{ subject.feed }.not_to raise_error
end

it 'returns relations' do
pending 'would be more pretty, but not needed now'
expect(subject.feed).to be_a ActiveRecord::Relation
end

it 'returns twets' do
subscription = Subscription.create!(subscriber: subject, feeder: other_user)
expect(subject.feed).to all be Twet
end

it 'returns twets from feeders' do
subscription = Subscription.create!(subscriber: subject, feeder: other_user)
twet = Twet.create!(user: other_user, message: 'hi!')

expect(subject.feed).to include twet
end

it 'does not return twets from non-feeders' do
twet = Twet.create!(user: subject, message: 'hi!')
expect(subject.feed).not_to include twet
end
end
end