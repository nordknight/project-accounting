require 'rails_helper'

RSpec.describe "models/edit", :type => :view do
  before(:each) do
    @model = assign(:model, Model.create!(
      :Comment => "MyString",
      :content => "MyString",
      :commenter => "MyString",
      :post => nil,
      :user => nil
    ))
  end

  it "renders the edit model form" do
    render

    assert_select "form[action=?][method=?]", model_path(@model), "post" do

      assert_select "input#model_Comment[name=?]", "model[Comment]"

      assert_select "input#model_content[name=?]", "model[content]"

      assert_select "input#model_commenter[name=?]", "model[commenter]"

      assert_select "input#model_post_id[name=?]", "model[post_id]"

      assert_select "input#model_user_id[name=?]", "model[user_id]"
    end
  end
end
