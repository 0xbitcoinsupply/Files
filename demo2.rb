require "haml"
require "httparty"
require "sinatra"
require "securerandom"
require "./db"
require "mysql2"
set(:port, 8000)

$mySQLconnect = Mysql2::Client.new(:host => "localhost", :username => "EDITTHIS", :password => "EDITTHIS");


$numFloat = 0;
$demoMultiplyer = 1;


$priceCoin = 375 * $demoMultiplyer;
$priceMint = 80 * $demoMultiplyer;
$priceAMint= 70 * $demoMultiplyer;
$priceMeme = 0.001;
$international = 35 * $demoMultiplyer;
get "/" do
  client= $mySQLconnect
        #client = Mysql2::Client.new(:host => "localhost", :username => "newuser2", :password => "Bobtde23f1f31cfffohornton12399")
  client.select_db('demo');
  results = client.query("SELECT * FROM product WHERE id = '4'")
  @qTest;
  @nTest;
  results.each do |row|
  # conveniently, row is a hash
  # the keys are the fields, as you'd expect
  # the values are pre-built ruby primitives mapped from their corresponding field types in MySQL
  @nTest = row["name"] # row["id"].is_a? Integer
  @qTest = row["quant"]
  if row["dne"]  # non-existant hash entry is nil
    puts row["dne"]
  end
end


  @qSold = "Pay now for Test Order with small amount of Bitcoin"
  if @qTest < 1
          @qTest = "SOLD OUT NO MORE LEFT"
          @qSold = "SOLD OUT SOLD OUT"
end
  results = client.query("SELECT * FROM product WHERE id = '3'")
  @nGold;
  @qGold;
  results.each do |row|
  # conveniently, row is a hash
   # the keys are the fields, as you'd expect
  # the values are pre-built ruby primitives mapped from their corresponding field types in MySQL
  @nGold = row["name"] # row["id"].is_a? Integer
  @qGold = row["quant"]
  if row["dne"]  # non-existant hash entry is nil
    puts row["dne"]
  end
end

  @gSold = "Pay now for 1987 Gold $5 Consitution Coin with 0xBitcoin"
  if @qGold < 1
    @qGold = "SOLD OUT NO MORE LEFT"
    @gSold = "SOLD OUT SOLD OUT"
end
  results = client.query("SELECT * FROM product WHERE id = '2'")
  @nAlmostMint;
  @qAlmostMint;
  results.each do |row|
  # conveniently, row is a hash
  # the keys are the fields, as you'd expect
  # the values are pre-built ruby primitives mapped from their corresponding field types in MySQL
  @nAlmostMint = row["name"] # row["id"].is_a? Integer
  @qAlmostMint = row["quant"]
  if row["dne"]  # non-existant hash entry is nil
    puts row["dne"]
  end
end
  @gAlmost = "Pay now for Almost Mint card with 0xBitcoin"
  if @qAlmostMint < 1
    @qAlmostMint = "SOLD OUT NO MORE LEFT"
    @gAlmost = "SOLD OUT SOLD OUT"
end
  results = client.query("SELECT * FROM product WHERE id = '1'")
  @nMint;
  @qMint;
  results.each do |row|
  # conveniently, row is a hash
  # the keys are the fields, as you'd expect
   # the values are pre-built ruby primitives mapped from their corresponding field types in MySQL
  @nMint = row["name"] # row["id"].is_a? Integer
  @qMint = row["quant"]
  if row["dne"]  # non-existant hash entry is nil
    puts row["dne"]
  end
end

  @gMint = "Pay now for  Mint Dodger  card with 0xBitcoin"
  if @qMint < 1
     @qMint = "SOLD OUT NO MORE LEFT"
     @gMint = "SOLD OUT SOLD OUT"
end
uri = URI.parse("https://0xbtc.info/api/stats.json")
response = Net::HTTP.get_response(uri)
@string1 = response.body
str1_markerstring = 'usdPrice": '
str2_markerstring = "}"
@test2 = @string1[/#{str1_markerstring}(.*?)#{str2_markerstring}/m, 1]
@flo = @test2.to_f
@test=0.825
print "\n\n\n\n\n"
@floatPrice = @flo * @test



  @intprice = $international
  @pmint = $priceMint
  @pamint= $priceAMint
  @pgold = $priceCoin
  @total3 = $priceMeme
  @total = @pgold / @floatPrice
  @total1 = @pmint / @floatPrice
  @total2 = @pamint / @floatPrice
  @shipInt = $international / @floatPrice
  @total4 = @total.round($numFloat)
  @total1 =  @total1.round($numFloat)
  @total2 = @total2.round($numFloat)
  @intp =  @shipInt.round($numFloat)
haml :index
end



post "/" do

  client = $mySQLconnect
  client.select_db('demo');
  results = client.query("SELECT * FROM product WHERE id = '4'")
  @qTest;
  @nTest;
  results.each do |row|
  # conveniently, row is a hash
  # the keys are the fields, as you'd expect
  # the values are pre-built ruby primitives mapped from their corresponding field types in MySQL
  @nTest = row["name"] # row["id"].is_a? Integer
  @qTest = row["quant"]
  if row["dne"]  # non-existant hash entry is nil
    puts row["dne"]
  end
end
  results = client.query("SELECT * FROM product WHERE id = '3'")
  @nGold;
  @qGold;
  results.each do |row|
  # conveniently, row is a hash
  # the keys are the fields, as you'd expect
  # the values are pre-built ruby primitives mapped from their corresponding field types in MySQL
  @nGold = row["name"] # row["id"].is_a? Integer
  @qGold = row["quant"]
  if row["dne"]  # non-existant hash entry is nil
    puts row["dne"]
  end
end
  results = client.query("SELECT * FROM product WHERE id = '2'")
  @nAlmostMint;
  @qAlmostMint;
  results.each do |row|
  # conveniently, row is a hash
  # the keys are the fields, as you'd expect
  # the values are pre-built ruby primitives mapped from their corresponding field types in MySQL
  @nAlmostMint = row["name"] # row["id"].is_a? Integer
  @qAlmostMint = row["quant"]
  if row["dne"]  # non-existant hash entry is nil
    puts row["dne"]
  end
end
  results = client.query("SELECT * FROM product WHERE id = '1'")
  @nMint;
  @qMint;
  results.each do |row|

    # conveniently, row is a hash
  # the keys are the fields, as you'd expect
  # the values are pre-built ruby primitives mapped from their corresponding field types in MySQL
  @nMint = row["name"] # row["id"].is_a? Integer
  @qMint = row["quant"]
  if row["dne"]  # non-existant hash entry is nil
    puts row["dne"]
  end
end




@total = BigDecimal(params[:total])
uri = URI.parse("https://0xbtc.info/api/stats.json")
response = Net::HTTP.get_response(uri)
@string1 = response.body
str1_markerstring = 'usdPrice": '
str2_markerstring = "}"
@test2 = @string1[/#{str1_markerstring}(.*?)#{str2_markerstring}/m, 1]
@flo = @test2.to_f
@test=0.825
@floatPrice = @flo * @test



  @pmint = $priceMint
  @pamint = $priceAMint
  @pgold = $priceCoin
  @total3 = $priceMeme

@total5 = @pgold / @floatPrice
@total1 = @pmint / @floatPrice
@total2 = @pamint / @floatPrice
@total5 = @total5.round($numFloat)
@total1 =  @total1.round($numFloat)
@total2 = @total2.round($numFloat)
@int = $international / @floatPrice
@int = @int.round($numFloat)

if @total == @total3 && @qTest < 1
  redirect "https://0xBTC.store/#Fake"

elsif @total5 == @total && @qGold < 1
  redirect "https://0xBTC.store/#GoldCoin"
elsif @total2 == @total && @qAlmostMint < 1
  redirect "https://0xBTC.store/#AlmostMint"
elsif @total1 ==  @total && @qMint < 1
  redirect "https://0xBTC.store/#Mint"
end





if @total != @int && @total != @total3 && @total != @total5 && @total != @total1 && @total != @total2
  halt 403, "Price has changed, please go back and try again, <a href=''>CLICK HERE TO RETURN TO THE SITE</a>"
end


  order = Order.new
  order.id = Order.generate_id
  order.amount = @total
  # make a secret password for 0xBTCpay to give us with the postback, after
  # payment has been made, so we can be sure we're really talking to our
  # 0xBTCpay and not anyone else.
  order.postback_secret = SecureRandom.hex(8)

  # ask 0xBTCpay to start a payment
  headers = {"Content-Type" => "application/json"}
  body = {
    method: "start_payment",
    params: {
      amount: @total.to_s("F"),
      # 0xBTCpay will give us this data in the postback, after the customer has
      # paid the full amount of 0xBitcoin.
      data: {order_id: order.id, postback_secret: order.postback_secret},
      # 0xBTCpay will do a POST to our postback_url when the payment is complete.
      postback_url: "https://0xbtc.store/postback"
    },
    id:1, # this is not an order ID. it can always be 1 (or whatever). part of JSONRPC.
    jsonrpc:"2.0"
  }.to_json
  r = HTTParty.post("https://payments.0xbtc.store", body: body, headers: headers)

          # 0xBTCpay will give us back data like this:
          # {
          #   id: "2e33e3beb7ec2af9",    # ID for tracking the payment with 0xBTCpay
          #   amount: "0.001",           # same as our order.amount
          #   address: "0xabcdef..."     # ethereum address the customer should send 0xBTC to
          # }
  result = r.parsed_response["result"]

  halt 500 unless result

          # update our order with these details
  order.payment_id = result["id"]
  order.address = r["address"]
  order.save

  redirect "/#{order.id}"
end

# order lookup page
get %r(/(\d+)) do
  order_id = params["captures"].first
  @order = Order[order_id]
  halt 404, "order not found" unless @order

  if !@order.paid_at
    haml :payment
  else
    # allow access to spicy memes
    get_memes
    haml :order
  end
end

        # our postback. 0xBTCpay will call this when payment is complete.
        # the JSON data from 0xBTCpay will look like this:
        # {
        #   id: "2e33e3beb7ec2af9",  # ID for tracking the payment with 0xBTCpay
        #   data: {...},             # our original data that we sent 0xBTCpay
        #   tx_hash: "0xeff223.."    # the ethereum transaction of the payment
        # }
post "/postback" do
  postback = JSON.parse(request.body.read, symbolize_names: true)

  # this is our original data that we sent 0xBTCpay
  data = JSON.parse(postback[:data], symbolize_names: true)

  # look up the order 0xBTCpay is telling us about
  order_id = data[:order_id]

  order = Order[order_id]
  halt 500 unless order

  # make sure we are really talking to 0xBTCpay, not an imposter
  if order.postback_secret != data[:postback_secret]
    halt 403, "forbidden!"
  end

  # okay, the order is really paid
  order.paid_at = Time.now
  order.tx_hash = postback[:tx_hash]

uri = URI.parse("https://0xbtc.info/api/stats.json")
response = Net::HTTP.get_response(uri)
@string1 = response.body
str1_markerstring = 'usdPrice": '
str2_markerstring = "}"
@test2 = @string1[/#{str1_markerstring}(.*?)#{str2_markerstring}/m, 1]
@flo = @test2.to_f
print @flo
@test=0.825
@floatPrice = @flo * @test

  client = $mySQLconnect
  client.select_db('demo');
  order.tx_hash = postback[:tx_hash]
  if order.amount >= ($priceMeme / @floatPrice * 0.97) && order.amount <= ($priceMeme / @floatPrice *1.03)
     results = client.query("SELECT * FROM product WHERE id = 4")
     @quantTest = 0;
     results.each do |row|
     @quantTest= row["quant"]
     if row["dne"]
        puts row["dne"]
     end
   end
   @newTest = @quantTest - 1
    @strint = @newTest.to_s
    recultz = client.query("UPDATE product SET quant = "+@strint+" WHERE id = 4")
    elsif order.amount >= ($priceCoin / @floatPrice * 0.97) && order.amount <= ($priceCoin / @floatPrice *1.03)
    results = client.query("SELECT * FROM product WHERE id = 3")
    @quantTest = 0;
    results.each do |row|
    @quantTest= row["quant"]
    if row["dne"]
      puts row["dne"]
    end
  end
    @newTest = @quantTest - 1
    @strint = @newTest.to_s
    recultz = client.query("UPDATE product SET quant = "+@strint+" WHERE id = 3")
    elsif order.amount >=  ($priceAMint / @floatPrice * 0.97) && order.amount <= ($priceAMint / @floatPrice *1.03)
    results = client.query("SELECT * FROM product WHERE id = 2")
    @quantTest = 0;
    results.each do |row|
    @quantTest= row["quant"]
    if row["dne"]
      puts row["dne"]
    end
  end
    @newTest = @quantTest - 1
    @strint = @newTest.to_s
    recultz = client.query("UPDATE product SET quant = "+@strint+" WHERE id = 2")
    elsif order.amount >=  ($priceMint / @floatPrice * 0.97) && order.amount <= ($priceMint / @floatPrice *1.03)
    results = client.query("SELECT * FROM product WHERE id = 1")
    @quantTest = 0;
    results.each do |row|
    @quantTest= row["quant"]
    if row["dne"]
      puts row["dne"]
    end
  end
    @newTest = @quantTest - 1
    @strint = @newTest.to_s
    recultz = client.query("UPDATE product SET quant = "+@strint+" WHERE id = 1")
end


  order.save
  halt 200, "Thank you for buying!!! Shipping information will pop up for real orders!!! 0xBTCpay"









end

### helpers

def get_memes
  $meme_files ||= Dir.entries("public/memes").grep(%r((.png|.gif|.jpg)$)i)
  num_memes = (@order.amount / 0.001).to_i
  @memes = []
  srand @order.id.to_i
  random_memes = $meme_files.shuffle
  num_memes.times do
    @memes << random_memes.pop
  end
end
      
      

  
