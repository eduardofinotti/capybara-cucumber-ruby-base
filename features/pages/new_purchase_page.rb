class NewPurchasePage < SitePrism::Page
  set_url "/#/compras/nova"

  element :negotiation_header, '#negotiation'
  element :purchase_negotiator, '#purchaseNegotiator'
  element :purchase_number, '#purchaseNumber'
  element :purchase_category, '#purchaseCategory'
  element :save_purchase_button, '#savePurchase'
  element :statements_summary_receivable, '#statementsSummaryReceivable'

  class PurchaseItens < SitePrism::Section
    element :purchase_item, '#purchaseItem0'
    element :purchase_item_description, '#purchaseItemDescription0'
    element :purchase_item_quantity, '#purchaseItemQuantity0'
    element :purchase_item_price, '#purchaseItemPrice0'
    element :purchase_item_total, '#purchaseItemTotal0'
  end

  section :purchase_itens, PurchaseItens, ".table-flat"

end
