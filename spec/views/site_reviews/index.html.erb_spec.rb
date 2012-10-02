require 'spec_helper'

describe "site_reviews/index" do
  before(:each) do
    assign(:site_reviews, [
      stub_model(SiteReview,
        :site_id => 1,
        :reviewedby => "Reviewedby",
        :acctepted => false,
        :reasonrejected => "MyText"
      ),
      stub_model(SiteReview,
        :site_id => 1,
        :reviewedby => "Reviewedby",
        :acctepted => false,
        :reasonrejected => "MyText"
      )
    ])
  end

  it "renders a list of site_reviews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Reviewedby".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
