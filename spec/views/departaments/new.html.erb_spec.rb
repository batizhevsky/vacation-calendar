require 'spec_helper'

describe "departaments/new" do
  before(:each) do
    assign(:departament, stub_model(Departament,
      :name => "MyString",
      :chief => 1
    ).as_new_record)
  end

  it "renders new departament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => departaments_path, :method => "post" do
      assert_select "input#departament_name", :name => "departament[name]"
      assert_select "input#departament_chief", :name => "departament[chief]"
    end
  end
end
