require 'rails_helper'

RSpec.describe "stores/show", type: :view do
  before(:each) do
    @store = assign(:store, Store.create!(
      :name => "Name",
      :email => "Email",
      :open => false,
      :image => "Image",
      :photos => "",
      :tags => "",
      :description => "Description",
      :lat => "",
      :long => "",
      :votes => "",
      :props => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
