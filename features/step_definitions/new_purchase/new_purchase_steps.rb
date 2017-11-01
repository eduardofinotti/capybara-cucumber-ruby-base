new_purchase_page = NewPurchasePage.new

Given("I acces to realize a new purchase") do
  new_purchase_page.load
end

Given("I insert the purchase negotiator {string}") do |string|
  new_purchase_page.purchase_negotiator.set string
end

Given("I insert the purchase number {string}") do |string|
  new_purchase_page.purchase_number.set string
end

Given("I insert the purchase category {string}") do |string|
  new_purchase_page.purchase_category.set string
end

Given("I insert {string}, {string}, {int}, {string}") do |string, string2, int, string3|
  new_purchase_page.purchase_itens.purchase_item.set string
  new_purchase_page.purchase_itens.purchase_item_description.set string2
  new_purchase_page.purchase_itens.purchase_item_quantity.set int
  new_purchase_page.purchase_itens.purchase_item_price.set string3
end

Then("I see the {string}") do |string|
  binding.pry
  #expect(page).to have_css('#purchaseItemTotal0', text: string)
  expect(page).to have_css('#purchaseItemTotal0', visible: false)
  #expect(page).to have_selector(:id, 'purchaseItemTotal0', text: string)
  #expect(new_purchase_page.purchase_itens.purchase_item_total.text).to have_content(string)
end
