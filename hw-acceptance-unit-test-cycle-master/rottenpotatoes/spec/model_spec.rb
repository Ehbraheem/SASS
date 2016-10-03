require 'rails_helper'

describe Movie do
  describe 'Find Movies by same director' do
    context 'Invalid director' do
      it 'should raise ArgumentError' do
        Movie.stub(:same_director).and
        Model.should_receive :same_director .and_raise ArgumentError
      end
    end
  context 'Valid director' do
    it 'Should find the movies by same director' do
      @test_result = [double('Movie', :title => 'Azeez'), double('Movie', :title => 'Dairo'), double('Movie', :title => 'Hazeezual')]
      Movie.stub(:same_director).with('Godswill').and_return(@test_result)
      expect(Movie).to receive(:same_director).and_return(@test_result)
      Movie.same_director "Godswill"
    end
  end
end
end
