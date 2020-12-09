Supplier.create(name: "Romano Solano", email: "romano@example.com", address: "111 Some St, Galax, VA", phone_number: "568-222-5555")
Supplier.create(name: "Rob Gordon", email: "rob@example.com", address: "3334 Nowhere St, New York, NY", phone_number: "321-222-5555")
Supplier.create(name: "Kells Nollenberger", email: "kells@example.com", address: "8473 15th St, Brooklyn, NY", phone_number: "256-589-6544")

Product.create(name: "Kay", description: "A great clean example with no neck breaks or delamintation", specs: "Violin corners, Rosewood fingerboard and tailpiece, New Spirocore medium strings, Fishman Full Circle Pickup", year: 1939, model: "C-1", origin: "Elk Grove Village, Illinois", new_used: "used", category: "Upright", current: TRUE, price: 3000, units: 1, supplier_id: 2)
Product.create(name: "Kay", description: "A great clean example with no neck breaks or delamintation", specs: "Violin corners, Rosewood fingerboard and tailpiece, New Spirocore medium strings, Fishman Full Circle Pickup", year: 1954, model: "M-1", origin: "Elk Grove Village, Illinois", new_used: "used", category: "Upright", current: TRUE, price: 3200, units: 1, supplier_id: 3)
Product.create(name: "Fender", description: "", specs: "Block pearloid inlays, Marcus Miller custom active preamp, larger pickguard, upgraded tuners", year: 2001, model: "Marcus Miller American", origin: "USA", new_used: "used", category: "Electric", current: TRUE, price: 1800, units: 1, supplier_id: 4, strings: 5, weight: 7.5)

Image.create(url: "https://i.ebayimg.com/00/s/MTU5OVgxMjAw/z/IfQAAOSwQ2ZfV6dk/$_1.JPG", caption: "Full front View")
Image.create(url: "https://uptonbass.com/wp-content/uploads/2017/04/kay_m1b_double_bass_1958_01-640x1024.jpg", caption: "Full front View")
Image.create(url: "https://i.pinimg.com/originals/29/24/82/29248253bdfaf05b8381f79d8c2cdb86.jpg", caption: "Full front View")

ProductImage.create(product_id: 1, image_id: 1)
ProductImage.create(product_id: 2, image_id: 2)
ProductImage.create(product_id: 3, image_id: 3)
