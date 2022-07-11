# frozen_string_literal:true

require 'programming_language'

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python')}

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }

    it 'should defualt to Runy as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end
