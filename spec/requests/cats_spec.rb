require 'rails_helper'

RSpec.describe "Cats", type: :request do

  describe "GET /index" do
    it 'gets a list of cats' do
      # create a cat
      Cat.create(
        name: 'Toast',
        age: 2,
        enjoys: 'having thumbs',
        image: 'https://static01.nyt.com/images/2019/07/21/arts/23lionking1/merlin_154880472_6647f53b-1be2-43cd-87e0-ce26ebf1d4ed-superJumbo.jpg'
      )
      # make an index request
      get '/cats'

      # parse our request data
      cat = JSON.parse(response.body)

      # asserting against the response code
      expect(response).to have_http_status(200)
      # asserting against the payload
      expect(cat.length).to eq 1
    end
  end

  describe "POST /create" do
    it 'creates a cat' do
      # create a cat
      cat_params = {
        cat: {
          name: 'Toast',
          age: 2,
          enjoys: 'having thumbs',
          image: 'https://static01.nyt.com/images/2019/07/21/arts/23lionking1/merlin_154880472_6647f53b-1be2-43cd-87e0-ce26ebf1d4ed-superJumbo.jpg'
        }
      }

      # make a request
      post '/cats', params: cat_params

      # asserting against the response code
      expect(response).to have_http_status(200)

      # pull the cat from the db
      cat = Cat.first

      # asserting against the payload
      expect(cat.name).to eq('Toast')
      expect(cat.age).to eq(2)
      expect(cat.enjoys).to eq('having thumbs')
      expect(cat.image).to eq('https://static01.nyt.com/images/2019/07/21/arts/23lionking1/merlin_154880472_6647f53b-1be2-43cd-87e0-ce26ebf1d4ed-superJumbo.jpg')
    end
  end

end
