require 'spec_helper'

describe "Viewing the list of activities" do
  it "shows the activities" do
    activity1 = Activity.create(name: 'Visit Bruges',
                                description: 'Visit this city in Belgium.')
    activity2 = Activity.create(name: 'Eat Spanish',
                                description: 'Go Spanish with some tapas')

    visit activities_url

    expect(page).to have_text(activity1.name)
    expect(page).to have_text(activity2.name)
  end
end
