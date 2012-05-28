require 'spec_helper'

describe "vacations/new" do
  before(:each) do
    assign(:vacation, stub_model(Vacation,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new vacation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vacations_path, :method => "post" do
      assert_select "input#vacation_user_id", :name => "vacation[user_id]"
    end
  end
end
