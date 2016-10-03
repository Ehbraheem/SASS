require 'rails_helper'

describe MoviesController do
  describe "Finding Movie with same director" do
    # context 'It calls th'
    it 'should call the model method' do
      expect(Movie).to receive(:same_director)
      .with('Samson Samuels')
      get :same_director, 'Samson Samuels'
    end
    
    it 'should assign the right value to instance variable' do
      @test_result = mock('Movie', :same_director => 'Samson Samuels')
      expect(Movie).to receive(:same_director)
      .with('Samson Samuels').and_return(@test_result)
      get :same_director, 'Samson Samuels'
      expect assigns(:movies).to eq @test_result
    end
  end
end
