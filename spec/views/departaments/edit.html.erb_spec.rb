require 'spec_helper'

describe "departaments/edit" do
  before(:each) do
    @departament = assign(:departament, stub_model(Departament,
      :name => "MyString",
      :chief => 1
    ))
  end

  it "renders the edit departament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => departaments_path(@departament), :method => "post" do
      assert_select "input#departament_name", :name => "departament[name]"
      assert_select "input#departament_chief", :name => "departament[chief]"
    end
  end
end
