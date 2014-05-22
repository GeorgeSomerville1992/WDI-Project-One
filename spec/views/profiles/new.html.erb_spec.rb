require 'spec_helper'

describe "profiles/new" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :bio => "MyString",
      :avatar => "MyString",
      :history => "MyString",
      :background => "MyString"
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profiles_path, "post" do
      assert_select "input#profile_bio[name=?]", "profile[bio]"
      assert_select "input#profile_avatar[name=?]", "profile[avatar]"
      assert_select "input#profile_history[name=?]", "profile[history]"
      assert_select "input#profile_background[name=?]", "profile[background]"
    end
  end
end
