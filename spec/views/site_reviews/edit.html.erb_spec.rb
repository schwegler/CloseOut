require 'spec_helper'

describe "site_reviews/edit" do
  before(:each) do
    @site_review = assign(:site_review, stub_model(SiteReview,
      :site_id => 1,
      :reviewedby => "MyString",
      :acctepted => false,
      :reasonrejected => "MyText"
    ))
  end

  it "renders the edit site_review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => site_reviews_path(@site_review), :method => "post" do
      assert_select "input#site_review_site_id", :name => "site_review[site_id]"
      assert_select "input#site_review_reviewedby", :name => "site_review[reviewedby]"
      assert_select "input#site_review_acctepted", :name => "site_review[acctepted]"
      assert_select "textarea#site_review_reasonrejected", :name => "site_review[reasonrejected]"
    end
  end
end
