require 'rails_helper'

RSpec.describe "models/show", :type => :view do
  before(:each) do
    @model = assign(:model, Model.create!(
      :Comment => "Comment",
      :content => "Content",
      :commenter => "Commenter",
      :post => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Comment/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Commenter/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
