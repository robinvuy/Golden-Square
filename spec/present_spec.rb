require "present"

RSpec.describe Present do
    it "wraps and unwraps contents" do
        present = Present.new
        present.wrap(420)
        expect(present.unwrap).to eq 420
    end

    it "fails if we unwrap without wrapping first" do
        present = Present.new
        expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
    
    it "fails if we wrap if we've already wrapped" do
        present = Present.new
        present.wrap(7)
        expect { present.wrap(100) }.to raise_error "A contents has already been wrapped."
        expect(present.unwrap).to eq 7
    end
end