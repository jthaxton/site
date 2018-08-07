class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end


def create

  @article = Article.new(params.require(:article).permit(:title, :text, :name, :city, :state, :zip, :phone, :tname, :tcompany, :tcity, :tstate, :tzip, :length, :width, :height, :weight))

  @article.save
  redirect_to @article

end

  def show
    @article = Article.find(params[:id])
    require 'easypost'
EasyPost.api_key = "mf0k6XfrFtHy2PM1HHPGQg"
#put categories here
p @article.city
p 1
fromAddress = EasyPost::Address.create(
  company: @article.title,
  street1: @article.text,
  street2: @article.name,
  city: @article.city,
  state: @article.state,
  zip: @article.zip,
  phone: @article.phone,
)
toAddress = EasyPost::Address.create(
  name: @article.tname,
  company: @article.tcompany,
  street1: @article.tstreet,
  city: @article.tcity,
  state: @article.tstate,
  zip: @article.tzip
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

  def new
    p params
  end
end
