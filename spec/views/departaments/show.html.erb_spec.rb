require 'spec_helper'

describe "departaments/show" do
  before(:each) do
    @departament = assign(:departament, stub_model(Departament,
      :name => "Name",
      :chief => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
