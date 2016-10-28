require "rails_helper"

RSpec.describe UsersController, type: :controller do
	describe "GET #show" do
		let(:user) { create(:user_with_messages) }
		subject { get :show, id: user.id}

		it "Responds with 200 status code" do
			expect(subject).to have_http_status(200)
		end

		it "Renders show template" do 
			expect(subject).to render_template(:show)
		end
	end
end