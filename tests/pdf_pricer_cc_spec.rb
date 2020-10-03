require_relative 'test_helper'
require_relative "../pdf_pricer"


describe PDF do
  let(:pdf1) {PDF.new(495, 2, 2, true, true)}
  let(:pdf2) {PDF.new(100, 1, 1, true, false)}
  let(:pdf3) {PDF.new(100, 1, 1, false, false)}

  it "Test case 1" do
    expect(pdf1.bind_book_price(true)).to eq(10000)
  end

  it "Test case 2" do
    expect(pdf2.bind_book_price(false)).to eq(8000)
  end

  it "Test case 3" do
    expect(pdf3.bind_book_price(false)).to eq(4000)
  end
end