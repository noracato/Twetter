require 'rails_helper'

RSpec.describe FeedController, type: :controller do

	let(:user){User.create!(name: "Gert", password: "1234")}

	describe "get show" do 
		before(:each){get :show, session: {user_id: user.id}}
		it "returns http 200 status" do
			 # met debugger kijken naar response
			expect(response.status).to eq 200
		end

		it "assigns feed to be a relation" do
			pending 'would be more pretty, but not needed now'
			expect(assigns(:feed)).to be_a ActiveRecord::Relation
		end

		it "assigns feed to consist of twets" do
			expect(assigns(:feed)).to all be Twet
		end

	end



end
