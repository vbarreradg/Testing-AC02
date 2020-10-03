require_relative 'test_helper'
require_relative "../pdf_pricer"


describe PDF do
  let(:pdf1) {PDF.new(500, 10, 10, true, true)}
  let(:pdf2) {PDF.new(300, 10, 10, true, true)}
  let(:pdf3) {PDF.new(300, 10, 10, false, true)}

  it "Test todo es verdadero" do
    expect(pdf1.bind_book_price(true)).to eq(10000)
  end

  it "Test entra a los else" do
    # Este test está a proposito mal para que puedan ver en consola como 
    # rspect reporta un test cuando falla
    expect(pdf2.bind_book_price(false)).to eq(16000) # Debe ser 4.5
  end

  it "Test entra a los else" do
    # Este test está a proposito mal para que puedan ver en consola como 
    # rspect reporta un test cuando falla
    expect(pdf3.bind_book_price(false)).to eq(8000) # Debe ser 4.5
  end
end