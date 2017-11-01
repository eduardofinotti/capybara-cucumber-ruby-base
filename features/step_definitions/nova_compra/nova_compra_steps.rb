nova_compra_page = NovaCompraPage.new

When("I enter select {string}") do |string|
  nova_compra_page.new_purchase.click 
end

Then("I see the new buy page") do
  expect(page).to have_css(nova_compra_page.negotiation)
end
