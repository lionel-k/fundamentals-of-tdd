require 'person'
# Use TDD principles to build out name functionality for a Person.
# Here are the requirements:
# - Add a method to return the full name as a string. A full name includes
#   first, middle, and last name. If the middle name is missing, there shouldn't
#   have extra spaces.
# - Add a method to return a full name with a middle initial. If the middle name
#   is missing, there shouldn't be extra spaces or a period.
# - Add a method to return all initials. If the middle name is missing, the
#   initials should only have two characters.
#
# We've already sketched out the spec descriptions for the #full_name. Try
# building the specs for that method, watch them fail, then write the code to
# make them pass. Then move on to the other two methods, but this time you'll
# create the descriptions to match the requirements above.

RSpec.describe Person do
  describe '#full_name' do
    it 'concatenates first name, middle name, and last name with spaces' do
      obama = Person.new(first_name: 'Barack',
                         middle_name: 'Junior',
                         last_name: 'Obama')

      result = obama.full_name

      expect(result).to eq('Barack Junior Obama')
    end

    it 'does not add extra spaces if middle name is missing' do
      obama = Person.new(first_name: 'Barack',
                         last_name: 'Obama')

      result = obama.full_name

      expect(result).to eq('Barack Obama')
    end
  end

  describe '#full_name_with_middle_initial' do
    it 'returns full name with the middle name in initials' do
      obama = Person.new(first_name: 'Barack',
                         middle_name: 'Junior',
                         last_name: 'Obama')

      result = obama.full_name_with_middle_initial

      expect(result).to eq('Barack J Obama')
    end

    it 'returns initials without extra spaces if middle_name missing' do
      obama = Person.new(first_name: 'Barack',
                         last_name: 'Obama')

      result = obama.full_name_with_middle_initial

      expect(result).to eq('Barack Obama')
    end
  end

  describe '#initials' do
    it 'returns initials for first, middle and last name' do
      obama = Person.new(first_name: 'Barack',
                         middle_name: 'Junior',
                         last_name: 'Obama')

      result = obama.initials

      expect(result).to eq('BJO')
    end

    it 'returns initials with no extra spaces for first and last name' do
      obama = Person.new(first_name: 'Barack',
                         last_name: 'Obama')

      result = obama.initials

      expect(result).to eq('BO')
    end
  end
end
