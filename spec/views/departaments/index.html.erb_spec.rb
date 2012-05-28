require 'spec_helper'

describe "departaments/index" do
  before(:each) do
    assign(:departaments, [
      stub_model(Departament,
        :name => "Name",
        :chief => 1
      ),
      stub_model(Departament,
        :name => "Name",
        :chief => 1
      )
    ])
  end

  it "renders a list of departaments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
