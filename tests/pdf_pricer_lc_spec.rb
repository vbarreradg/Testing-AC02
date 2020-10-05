require_relative 'test_helper'
require_relative "../pdf_pricer"


describe PDF do
  let(:pdf1) {PDF.new(500, 10, 10, true, true)}
  let(:pdf2) {PDF.new(300, 10, 10, true, true)}

  it "Test entra a los 3 primeros if" do
    expect(pdf1.bind_book_price(true)).to eq(10000)
  end
  it "Test entra a los else y al último if" do
    expect(pdf2.bind_book_price(false)).to eq(16000) 
  end
end