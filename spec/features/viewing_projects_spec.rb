require 'spec_helper'

feature "Viewing projects" do
  
  scenario "Hidden projects" do
    FactoryGirl.create(:project, name: "Hidden")
    visit '/'
    
    expect(page).to_not have_content("Hidden")
  end
end