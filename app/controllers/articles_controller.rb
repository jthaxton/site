class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create

    @article = Article.new(params.require(:article).permit(:from_name, :from_street1, :from_street2, :from_city, :from_state, :from_zip, :from_phone, :to_name, :to_company, :to_street, :to_city, :to_state, :to_zip, :length, :width, :height, :weight))
    if @article.save
      redirect_to @article
    else
      render 'articles/new'
    end

  end

  def show
    @article = Article.find(params[:id])
    require 'easypost'
EasyPost.api_key = "Insert Key"
#put categories here

fromAddress = EasyPost::Address.create(
  company: @article.from_name,
  street1: @article.from_street1,
  street2: @article.from_street2,
  city: @article.from_city,
  state: @article.from_state,
  zip: @article.from_zip,
  phone: @article.from_phone,
)
toAddress = EasyPost::Address.create(
  name: @article.to_name,
  company: @article.to_company,
  street1: @article.to_street,
  city: @article.to_city,
  state: @article.to_state,
  zip: @article.to_zip
)

@parcel = EasyPost::Parcel.create(
  length: @article.length,
  width: @article.width,
  height: @article.height,
  weight: @article.weight
)
#
# parcel = EasyPost::Parcel.create(
#   predefined_package: 'FlatRateEnvelope',
#   weight: 10
# )

shipment = EasyPost::Shipment.create(
  to_address: toAddress,
  from_address: fromAddress,
  parcel: @parcel
)

shipment.buy(
  :rate => shipment.lowest_rate
)

@linked = shipment.postage_label.label_url
  end


end
