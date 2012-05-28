require 'spec_helper'

describe "vacations/show" do
  before(:each) do
    @vacation = assign(:vacation, stub_model(Vacation,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
