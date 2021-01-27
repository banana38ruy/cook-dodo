require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        name: ""
      ),
      Recipe.create!(
        name: ""
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
