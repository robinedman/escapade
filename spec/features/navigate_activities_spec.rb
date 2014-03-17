require 'spec_helper'

describe "Navigating activities" do
  it "allows navigation from the detail page to the listing page" do
    activity = Activity.create(activity_attributes)
    visit activity_url(activity)
    click_link 'All Activities'

    expect(current_path).to eq(activities_path)
  end

  it "allows navigation from the listing page to the detail page" do
    activity = Activity.create(activity_attributes)

    visit activities_url
    click_link activity.name

    expect(current_path).to eq(activity_path(activity))
  end
end
