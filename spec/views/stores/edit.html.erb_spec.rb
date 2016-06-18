require 'rails_helper'

RSpec.describe "stores/edit", type: :view do
  before(:each) do
    @store = assign(:store, Store.create!(
      :name => "MyString",
      :email => "MyString",
      :open => false,
      :image => "MyString",
      :photos => "",
      :tags => "",
      :description => "MyString",
      :lat => "",
      :long => "",
      :votes => "",
      :props => ""
    ))
  end

  it "renders the edit store form" do
    render

    assert_select "form[action=?][method=?]", store_path(@store), "post" do

      assert_select "input#store_name[name=?]", "store[name]"

      assert_select "input#store_email[name=?]", "store[email]"

      assert_select "input#store_open[name=?]", "store[open]"

      assert_select "input#store_image[name=?]", "store[image]"

      assert_select "input#store_photos[name=?]", "store[photos]"

      assert_select "input#store_tags[name=?]", "store[tags]"

      assert_select "input#store_description[name=?]", "store[description]"

      assert_select "input#store_lat[name=?]", "store[lat]"

      assert_select "input#store_long[name=?]", "store[long]"

      assert_select "input#store_votes[name=?]", "store[votes]"

      assert_select "input#store_props[name=?]", "store[props]"
    end
  end
end
