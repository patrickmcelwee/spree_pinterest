Deface::Override.new(:virtual_path => "shared/_products",
                     :insert_bottom => "[data-hook='products_list_item']",
                     :text => "<%= pin_it_button(product) %>",
                     :name => "index_pin_it",
		     :disabled => true)

Deface::Override.new(:virtual_path => "products/show",
                     :insert_after => "#thumbnails",
                     :text => %q{<div id="pin-it" data-url="<%= product_url(@product) %>" data-description="<%= @product.name %>">
			     	<%= pin_it_button(@product) %>
			     </div>},
                     :name => "show_pin_it")
