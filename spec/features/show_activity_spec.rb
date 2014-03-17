require 'spec_helper'

describe "Viewing an individual activity" do
  it "shows the activity's details" do
    activity = Activity.create(activity_attributes)
    visit activity_url(activity)

    expect(page).to have_text(activity.name)
    expect(page).to have_text(activity.description[0..10])
  end
end
