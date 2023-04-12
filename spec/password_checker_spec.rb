require "./lib/password_checker.rb"

RSpec.describe PasswordChecker do
  context "testing if the password is long enough" do
    it "fails" do
      password = PasswordChecker.new
      expect { password.check("small") }.to raise_error "Invalid password, must be 8+ characters."
    end
    it "It fails because rabbit is shorter than 8 characters" do
      password = PasswordChecker.new
      expect { password.check("rabbit") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end
