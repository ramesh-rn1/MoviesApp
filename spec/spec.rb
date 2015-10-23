require 'spec_helper'
require 'rails_helper'

describe 'actors/show', :type => :view do
  before(:all) do
    assign(:actor,
      Actor.create(first_name: "bana", last_name: "apple", image: "test.jpg")
      )
    assign(:movies, [
      Movie.create(title: "Scarves", image: "scarves.jpg", release_year: "1989"),
      Movie.create(title: "Mason Jars", image: "jars.png", release_year: "2014")
    ])
  end

  context "Checkpoint 1" do
    it "displays the actor" do
      render

      expect(rendered).to include("bana"), "Did you display an actor's first name?"
      expect(rendered).to include("apple"), "Did you display an actor's last name?"
      expect(rendered).to include("test.jpg"), "Did you display an actor's image?"

    end
  end
end
