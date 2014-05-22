require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :bio => "MyString",
      :avatar => "MyString",
      :history => "MyString",
      :background => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do
      assert_select "input#profile_bio[name=?]", "profile[bio]"
      assert_select "input#profile_avatar[name=?]", "profile[avatar]"
      assert_select "input#profile_history[name=?]", "profile[history]"
      assert_select "input#profile_background[name=?]", "profile[background]"
    end
  end
end
