require 'spec_helper'

describe "Editing an activity" do
  it "updates the activity and shows the updated details" do
    activity = Activity.create(activity_attributes)
    visit activity_url(activity)
    click_link 'Edit'

    expect(current_path).to eq(edit_activity_path(activity))
    expect(find_field('Name').value).to eq(activity.name)


    fill_in 'Name', with: 'Updated Activity Title'
    click_button 'Update Activity'

    expect(current_path).to eq(activity_path(activity))
  end
end
