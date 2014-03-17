require 'spec_helper'

describe "Deleting an activity" do
  it "the activity is removed and the activities list is shown" do
    activity = Activity.create(activity_attributes)
    visit activity_url(activity)
    click_link 'Delete'

    expect(current_path).to eq(activities_path)
    expect(page).not_to have_text(activity.name)
  end
end
