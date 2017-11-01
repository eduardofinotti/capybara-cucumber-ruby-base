class NewPurchasePage < SitePrism::Page
  set_url "/#/compras/nova"

  element :negotiation_header, '#negotiation'
  element :purchase_negotiator, '#purchaseNegotiator'
  element :purchase_number, '#purchaseNumber'
  element :purchase_category, '#purchaseCategory'

  class PurchaseItens < SitePrism::Section
    element :purchase_item, '#purchaseItem0'
    element :purchase_item_description, '#purchaseItemDescription0'
    element :purchase_item_quantity, '#purchaseItemQuantity0'
    element :purchase_item_price, '#purchaseItemPrice0'
    element :purchase_item_total, '#purchaseItemTotal0'
  end

  section :purchase_itens, PurchaseItens, ".table-flat"

end
