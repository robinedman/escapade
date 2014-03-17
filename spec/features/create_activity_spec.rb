require 'spec_helper'

describe "Creating a new activity" do
  it "saves the activity and shows its details" do
    visit activities_url
    click_link 'Add New Activity'

    expect(current_path).to eq(new_activity_path)

    fill_in 'Name', with: 'New Activity Title'
    fill_in 'Description', with: 'Something very interesting that we just have to do'
    click_button 'Create Activity'

    expect(current_path).to eq(activity_path(Activity.last))
  end
end
