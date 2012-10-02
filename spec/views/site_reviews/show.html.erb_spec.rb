require 'spec_helper'

describe "site_reviews/show" do
  before(:each) do
    @site_review = assign(:site_review, stub_model(SiteReview,
      :site_id => 1,
      :reviewedby => "Reviewedby",
      :acctepted => false,
      :reasonrejected => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Reviewedby/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
  end
end
