require 'spec_helper'

describe "albums/new" do
  before(:each) do
    assign(:album, stub_model(Album,
      :name => "MyString",
      :artwork => "MyText"
    ).as_new_record)
  end

  it "renders new album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", albums_path, "post" do
      assert_select "input#album_name[name=?]", "album[name]"
      assert_select "textarea#album_artwork[name=?]", "album[artwork]"
    end
  end
end
