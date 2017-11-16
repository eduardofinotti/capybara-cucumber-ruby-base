class MainPage < SitePrism::Page
  set_url "/visao-geral"

  element :liInicio, "a#liInicio"
  element :newPurchaseSelectButton, "ca-dropdown-item-label"

end
