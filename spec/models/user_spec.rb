require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  let(:no_first) { User.create(email: "noFirst@example.com", first_name:"", last_name: "Smith", color: "", password:"password") }
  let(:no_last) { User.create(email: "noLast@example.com", first_name:"Jane", last_name: "", color: "firebrick red", password:"password") }
  let(:no_color) { User.create(email: "noColor@example.com", first_name:"Jane", last_name: "Doe", color: "", password:"password") }
  let(:full_info) { User.create(email: "fullInfo@example.com", first_name:"John", last_name: "Smith", color: "rebecca purple", password:"password") }
  
  describe User do
    it "is not valid without a first name" do
      expect(no_first).to_not be_valid
    end
    it "is not valid without a last name" do
      expect(no_last).to_not be_valid
    end
    it "is valid without a favorite color" do
      expect(no_color).to be_valid
    end
    it "is valid with full information" do
      expect(full_info).to be_valid
    end
  end
end
