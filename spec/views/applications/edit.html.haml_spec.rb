require 'spec_helper'

describe "applications/edit" do
  before(:each) do
    @application = assign(:application, stub_model(Application,
      :name => "MyString",
      :business_name => "MyString"
    ))
  end

  it "renders the edit application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => applications_path(@application), :method => "post" do
      assert_select "input#application_name", :name => "application[name]"
      assert_select "input#application_business_name", :name => "application[business_name]"
    end
  end
end
