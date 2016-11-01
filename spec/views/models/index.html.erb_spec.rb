require 'rails_helper'

RSpec.describe "models/index", :type => :view do
  before(:each) do
    assign(:models, [
      Model.create!(
        :Comment => "Comment",
        :content => "Content",
        :commenter => "Commenter",
        :post => nil,
        :user => nil
      ),
      Model.create!(
        :Comment => "Comment",
        :content => "Content",
        :commenter => "Commenter",
        :post => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of models" do
    render
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Commenter".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
