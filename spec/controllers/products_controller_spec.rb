require 'spec_helper'

describe ProductsController do

  # let!(:product2) { FactoryGirl.create(:product) }

  it "should return okay" do
    Product.stub(:all).and_return([])
    get :index
    expect(response).to be_okay
  end

  it "should assign products to @products" do
    Product.should_receive(:all).and_return([])
    get :index
    expect(assigns[:products]).to eq([])
  end

  it "should return all products" do
    product1 = FactoryGirl.create(:product)
    product2 = FactoryGirl.create(:product)
    get :index
    expect(assigns[:products]).to match([product1, product2])
  end

  # describe "GET 'index'" do
  #   it "returns http success" do
  #     get 'index'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'create'" do
  #   it "returns http success" do
  #     get 'create'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'new'" do
  #   it "returns http success" do
  #     get 'new'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'edit'" do
  #   it "returns http success" do
  #     get 'edit'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'show'" do
  #   it "returns http success" do
  #     get 'show'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'update'" do
  #   it "returns http success" do
  #     get 'update'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'destroy'" do
  #   it "returns http success" do
  #     get 'destroy'
  #     response.should be_success
  #   end
  # end

end
