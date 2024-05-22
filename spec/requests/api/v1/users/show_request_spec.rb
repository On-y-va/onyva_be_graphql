require 'rails_helper'

describe 'Users show API' do
  describe 'POST /onyva' do
    let(:user) { create(:user)}
    let(:valid_query) do
      <<-GRAPHQL
      query {
        user(id: #{user.id}) {
            firstName
            lastName
            id
            email
        }
     }
      GRAPHQL
    end
    let(:invalid_query) do
      <<-GRAPHQL
      query {
        user(id: lsdkfn) {
            firstName
            lastName
            id
            email
        }
     }
      GRAPHQL
    end
    context 'when the user exists' do

      it 'can get one user by their id' do 
        post "/api/v1/onyva", params: {query: valid_query}

        user_response = JSON.parse(response.body, symbolize_names: true)

        expect(response).to be_successful
        expect(user_response[:data][:user].keys).to eq([:firstName, :lastName, :id, :email])
        user_response[:data][:user].values.each do |value|
          expect(value).to be_a String
        end
      end
    end

    context 'when the user does not exist' do
      it 'responds with an error' do
        post "/api/v1/onyva", params: {query: invalid_query}

        error = JSON.parse(response.body, symbolize_names: true)
        expect(response).to be_successful
        
        expect(response.status).to eq(200)
        expect(error[:errors].first.keys).to eq([:message, :locations, :path, :extensions])
        expect(error[:errors].first[:message]).to eq("Argument 'id' on Field 'user' has an invalid value (lsdkfn). Expected type 'ID!'.")
      end
    end
  end
end