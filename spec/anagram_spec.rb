require 'anagram'

describe 'placing the country' do

	it 'knows which continent France is in' do
		expect(origin_continent("France")).to eq "Europe"
	end
	it 'knows which continent Canada is in' do
		expect(origin_continent("Canada")).to eq "North America"
	end

	it 'always picks a country from the CSV' do
		expect(pick_country(0)).to eq "Afghanistan"
	end

	it 'always picks a country from the CSV' do
		expect(pick_country(45)).to eq "Algeria"
	end	
end