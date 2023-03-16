require 'password_checker'

RSpec.describe PasswordChecker do
  it "Checks that password is 8+ characters long" do
    password_checker = PasswordChecker.new
    result = password_checker.check("cleanliness")
    expect(result).to eq(true)
  end
  
  it "fails if we input password smaller than 8 characters long" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("hole") }.to raise_error "Invalid password, must be 8+ characters."
  end

  it "fails if we input nothing" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("") }.to raise_error "Invalid password, must be 8+ characters."
  end
end