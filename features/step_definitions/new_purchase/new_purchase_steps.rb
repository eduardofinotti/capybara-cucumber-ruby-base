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

Given("I insert a set of itens") do
  (0..2).each do |i|
     find("#purchaseItem#{i}").set "Item 0#{i}"
     find("#purchaseItemDescription#{i}").set "Item 0#{i} - Description"
     find("#purchaseItemQuantity#{i}").set "#{i+1}"
     find("#purchaseItemPrice#{i}").set "#{i+120}"
  end

end

Given("I save the purchase") do
  new_purchase_page.save_purchase_button.click
end

Then("I see the statements Summary Receivable page") do
  expect(page).to have_content("728,00")
  #expect(page).to have_selector(:id, 'statements_summary_receivable', text: "728,00")
end

Then("I see the {string}") do |string|
  #binding.pry
  expect(page).to have_content(string)
  #expect(page).to have_css('#purchaseItemTotal0', text: string)
  #expect(page).to have_css('#purchaseItemTotal0', visible: false)
  #expect(page).to have_selector(:css, '#purchaseItemTotal0', text: string)
  #expect(page).to have_selector(:id, 'purchaseItemTotal0', text: string)
  #expect(new_purchase_page.purchase_itens.purchase_item_total.text).to have_content(string)
end
