Given(/^the following movies exist:$/) do |movies|
  # table is a Cucumber::MultilineArgument::DataTable
  movies.hashes.each do |movie|
  # debugger
  Movie.create! movie
  end
  # pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
  # pending # Write code here that turns the phrase above into concrete actions
  movie = Movie.find_by_title arg1
  expect(movie.director).to eq arg2
end