require 'spec_helper'

describe "vacations/edit" do
  before(:each) do
    @vacation = assign(:vacation, stub_model(Vacation,
      :user_id => 1
    ))
  end

  it "renders the edit vacation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vacations_path(@vacation), :method => "post" do
      assert_select "input#vacation_user_id", :name => "vacation[user_id]"
    end
  end
end
