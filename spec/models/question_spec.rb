require 'rails_helper'

describe Question do
  it { should have_many(:responses) }
end

describe Question do
  it 'is private by default' do
    question = FactoryBot.create(:question)
    question.name.should eq 'Knit the sock monkey'
  end
end
