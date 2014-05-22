require 'spec_helper'

describe "profiles/index" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :bio => "Bio",
        :avatar => "Avatar",
        :history => "History",
        :background => "Background"
      ),
      stub_model(Profile,
        :bio => "Bio",
        :avatar => "Avatar",
        :history => "History",
        :background => "Background"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bio".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => "History".to_s, :count => 2
    assert_select "tr>td", :text => "Background".to_s, :count => 2
  end
end
