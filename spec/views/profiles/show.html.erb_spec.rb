require 'spec_helper'

describe "profiles/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :bio => "Bio",
      :avatar => "Avatar",
      :history => "History",
      :background => "Background"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bio/)
    rendered.should match(/Avatar/)
    rendered.should match(/History/)
    rendered.should match(/Background/)
  end
end
