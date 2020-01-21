require 'rails_helper'

describe Response do
  it { should belong_to(:question) }
end

# describe Response do
#   it 'is private by default' do
#     response = FactoryBot.create(:response)
#     response.name.should eq 'Knit the sock monkey'
#   end
# end
