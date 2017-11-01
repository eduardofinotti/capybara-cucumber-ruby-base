class NovaCompraPage < SitePrism::Page
  set_url "/compras/nova"

  element :new_purchase, '.ca-dropdown-item'
  element :negotiation_header, '#negotiation'



end
