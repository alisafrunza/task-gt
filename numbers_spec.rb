require "rspec"
require "./numbers"

describe Numbers do
  describe ".sort" do
    let(:array) { input.split(" ") }

    context "with input scenario one" do
      let(:input) { "103 123 4444 99 2000" }
      let(:output) { "2000 103 123 4444 99" }

      it "sorts the numbers by the weight" do
        expect(described_class.sort(input)).to eq(output)
      end
    end

    context "with input scenario two" do
      let(:input) { "2000 10003 1234000 44444444 9999 11 11 22 123" }
      let(:output) { "11 11 2000 10003 22 123 1234000 44444444 9999" }

      it "sorts the numbers by the weight" do
        expect(described_class.sort(input)).to eq(output)
      end
    end
  end
end
