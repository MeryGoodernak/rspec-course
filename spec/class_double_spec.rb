require 'person'

RSpec.describe Person do
  it 'can only implement class method that are defined on a class' do
    script_klass = class_double('Script', build: 'Hello every one wellcome to this lecture.').as_stubbed_const
    expect(script_klass).to receive(:build)
    subject.speak
    expect(subject.script).to eq('Hello every one wellcome to this lecture.')
  end
end
