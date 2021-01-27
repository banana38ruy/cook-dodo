require 'rails_helper'

RSpec.describe "materials/index", type: :view do
  before(:each) do
    assign(:materials, [
      Material.create!(
        material_name: "Material Name",
        project: nil
      ),
      Material.create!(
        material_name: "Material Name",
        project: nil
      )
    ])
  end

  it "renders a list of materials" do
    render
    assert_select "tr>td", text: "Material Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
