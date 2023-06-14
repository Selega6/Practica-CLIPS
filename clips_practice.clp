(deftemplate shop
  (slot shop_name (type STRING))
  (slot location)
  (slot cellphone (type STRING))
  (slot delivery (type STRING))
  (slot delivery_price (type INTEGER))
  (slot delivery_time (type INTEGER))
  (slot rating (type INTEGER))
  (slot commission (type FLOAT))
)

(deftemplate location
  (slot name (type STRING))
  (slot distance (type INTEGER))
)

(deftemplate relations
  (slot product_name (type STRING))
  (slot shop_name (type STRING))
  (slot product_category (type STRING))
)

(deftemplate products
  (slot product_name (type STRING))
  (slot price (type INTEGER))
  (slot quality (type STRING))
  (slot quantity (type INTEGER))
  (slot brand (type STRING))
  (slot category (type STRING))
  (slot rating (type INTEGER))
)

(deftemplate recommendation
    (slot category (type STRING))
    ;(slot quantity (type INTEGER))
    (slot delivery (type STRING) (default "FALSE"))
    (slot product_name (type STRING))
    (slot shop_name (type STRING))
    (slot price (type INTEGER))
    (slot delivery_time (type INTEGER) (default 0))
    (slot id (type INTEGER))
)


(deffacts main_facts
    ; ********************************
    ; PEOPLE
    ; ********************************
    (shop
        (shop_name "MEDIA MARKT")
        (location "Telde")
        (cellphone "619123456")
        (delivery "TRUE") 
        (delivery_price 10)
        (delivery_time 24)
        (rating 7)
        (commission 0.4)
    )
    
    (shop
        (shop_name "WORTEN")
        (location "Gáldar")
        (cellphone "621928750")
        (delivery "FALSE") 
        (rating 4)
        (commission 0.35)
    )
    (shop
        (shop_name "ULTIMA INFORMATICA")
        (location "Las Palmas de Gran Canaria")
        (cellphone "659274930")
        (delivery "TRUE") 
        (delivery_price 10)
        (delivery_time 48)
        (rating 6)
        (commission 0.3)
    )

    (shop
        (shop_name "EL CORTE INGLES")
        (location "Tamaraceite")
        (cellphone "613942406")
        (delivery "TRUE") 
        (delivery_price 10)
        (delivery_time 72)
        (rating 7)
        (commission 0.2)
    )
    (shop
        (shop_name "PCCOMPONENTES")
        (location "Madrid")
        (cellphone "638493720")
        (delivery "TRUE") 
        (delivery_price 10)
        (delivery_time 24)
        (rating 8)
        (commission 0.25)
    )


    ; ********************************
    ; PRODUCTS
    ; ********************************
    
    (products
    (product_name "ASUS VivoBook Pro 15 OLED")
    (price 949)
    (quality "B+")
    (quantity 26)
    (brand "ASUS")
    (category "Laptop")
    (rating 8)
    )

    (products
    (product_name "Lenovo IdeaPad Gaming 3")
    (price 779)
    (quality "B-")
    (quantity 41)
    (brand "Leonovo")
    (category "Laptop")
    (rating 6)
    )

    (products
    (product_name "Xiaomi Redmi Note 11")
    (price 199)
    (quality "B-")
    (quantity 50)
    (brand "Xiaomi")
    (category "Smartphone")
    (rating 7)
    )

    (products
    (product_name "Alurin Go Intel Pentium")
    (price 267)
    (quality "C-")
    (quantity 68)
    (brand "Alurin")
    (category "Laptop")
    (rating 8)
    )

    (products
    (product_name "LG OLED evo Gallery Edition")
    (price 1800)
    (quality "A+")
    (quantity 10)
    (brand "LG")
    (category "TV")
    (rating 9)
    )
    
    (products
    (product_name "Logitech G Pro X")
    (price 117)
    (quality "A")
    (quantity 50)
    (brand "Logitech")
    (category "Headset")
    (rating 9)
    )

    (products
    (product_name "Acer Predator Orion 3000")
    (price 1350)
    (quality "A++")
    (quantity 6)
    (brand "Acer")
    (category "PC")
    (rating 10)
    )

    (products
    (product_name "Samsung UE32T4305")
    (price 260)
    (quality "B-")
    (quantity 80)
    (brand "Samsung")
    (category "TV")
    (rating 6)
    )
    
    (products
    (product_name "Xiaomi TV P1E")
    (price 409)
    (quality "B")
    (quantity 40)
    (brand "Xiaomi")
    (category "TV")
    (rating 6)
    )

    (products
    (product_name "Epical-Q Oak9 Waterforce")
    (price 5000)
    (quality "S")
    (quantity 5)
    (brand "Epical-Q")
    (category "PC")
    (rating 10)
    )

    (products
    (product_name "Jabra Evolve2 85")
    (price 393)
    (quality "A")
    (quantity 52)
    (brand "Jabra")
    (category "Headset")
    (rating 9)
    )

    (products
    (product_name "Samsung Galaxy A54")
    (price 393)
    (quality "B+")
    (quantity 43)
    (brand "Samsung")
    (category "Smartphone")
    (rating 7)
    )

    (products
    (product_name "Samsung Galaxy M13")
    (price 179)
    (quality "C++")
    (quantity 78)
    (brand "Samsung")
    (category "Smartphone")
    (rating 5)
    )

    (products
    (product_name "Razer Opus")
    (price 130)
    (quality "B-")
    (quantity 90)
    (brand "Razer")
    (category "Headset")
    (rating 6)
    )

    (products
    (product_name "MSI MAG Infinite X2")
    (price 2200)
    (quality "A+")
    (quantity 10)
    (brand "MSI")
    (category "PC")
    (rating 9)
    )


    (relations
    (product_name "ASUS VivoBook Pro 15 OLED")
    (shop_name "EL CORTE INGLES")
    (product_category "Laptop")
    )

    (relations
    (product_name "ASUS VivoBook Pro 15 OLED")
    (shop_name "WORTEN")
    (product_category "Laptop")
    )

    (relations
    (product_name "ASUS VivoBook Pro 15 OLED")
    (shop_name "PCCOMPONENTES")
    (product_category "Laptop")
    )

    (relations
    (product_name "Lenovo IdeaPad Gaming 3")
    (shop_name "WORTEN")
    (product_category "Laptop")
    )

    (relations
    (product_name "Lenovo IdeaPad Gaming 3")
    (shop_name "EL CORTE INGLES")
    (product_category "Laptop")
    )

    (relations
    (product_name "Lenovo IdeaPad Gaming 3")
    (shop_name "ULTIMA INFORMATICA")
    (product_category "Laptop")
    )

    (relations
    (product_name "Xiaomi Redmi Note 11")
    (shop_name "MEDIA MARKT")
    (product_category "Smartphone")
    )
    (relations
    (product_name "Xiaomi Redmi Note 11")
    (shop_name "PCCOMPONENTES")
    (product_category "Smartphone")
    )
    (relations
    (product_name "Xiaomi Redmi Note 11")
    (shop_name "ULTIMA INFORMATICA")
    (product_category "Smartphone")
    )

    (relations
    (product_name "Alurin Go Intel Pentium")
    (shop_name "WORTEN")
    (product_category "Laptop")
    )
    (relations
    (product_name "Alurin Go Intel Pentium")
    (shop_name "MEDIA MARKT")
    (product_category "Laptop")
    )
    (relations
    (product_name "Alurin Go Intel Pentium")
    (shop_name "EL CORTE INGLES")
    (product_category "Laptop")
    )

    (relations
    (product_name "LG OLED evo Gallery Edition")
    (shop_name "PCCOMPONENTES")
    (product_category "TV")
    )
    (relations
    (product_name "LG OLED evo Gallery Edition")
    (shop_name "ULTIMA INFORMATICA")
    (product_category "TV")
    )
    (relations
    (product_name "LG OLED evo Gallery Edition")
    (shop_name "MEDIA MARKT")
    (product_category "TV")
    )

    (relations
    (product_name "Logitech G Pro X")
    (shop_name "WORTEN")
    (product_category "Headset")
    )
    (relations
    (product_name "Logitech G Pro X")
    (shop_name "ULTIMA INFORMATICA")
    (product_category "Headset")
    )
    (relations
    (product_name "Logitech G Pro X")
    (shop_name "EL CORTE INGLES")
    (product_category "Headset")
    )

    (relations
    (product_name "Acer Predator Orion 3000")
    (shop_name "MEDIA MARKT")
    (product_category "PC")
    )
    (relations
    (product_name "Acer Predator Orion 3000")
    (shop_name "PCCOMPONENTES")
    (product_category "PC")
    )
    (relations
    (product_name "Acer Predator Orion 3000")
    (shop_name "ULTIMA INFORMATICA")
    (product_category "PC")
    )
    (relations
    (product_name "Samsung UE32T4305")
    (shop_name "EL CORTE INGLES")
    (product_category "TV")
    )
    (relations
    (product_name "Samsung UE32T4305")
    (shop_name "MEDIA MARKT")
    (product_category "TV")
    )
    (relations
    (product_name "Samsung UE32T4305")
    (shop_name "WORTEN")
    (product_category "TV")
    )
    (relations
    (product_name "Xiaomi TV P1E")
    (shop_name "PCCOMPONENTES")
    (product_category "TV")
    )
    (relations
    (product_name "Xiaomi TV P1E")
    (shop_name "EL CORTE INGLES")
    (product_category "TV")
    )
    (relations
    (product_name "Xiaomi TV P1E")
    (shop_name "WORTEN")
    (product_category "TV")
    )
    (relations
    (product_name "Epical-Q Oak9 Waterforce")
    (shop_name "PCCOMPONENTES")
    (product_category "PC")
    )
    (relations
    (product_name "Epical-Q Oak9 Waterforce")
    (shop_name "ULTIMA INFORMATICA")
    (product_category "PC")
    )
    (relations
    (product_name "Epical-Q Oak9 Waterforce")
    (shop_name "MEDIA MARKT")
    (product_category "PC")
    )
    (relations
    (product_name "Jabra Evolve2 85")
    (shop_name "PCCOMPONENTES")
    (product_category "Headset")
    )
    (relations
    (product_name "Jabra Evolve2 85")
    (shop_name "WORTEN")
    (product_category "Headset")
    )
    (relations
    (product_name "Jabra Evolve2 85")
    (shop_name "MEDIA MARKT")
    (product_category "Headset")
    )
    (relations
    (product_name "Samsung Galaxy A54")
    (shop_name "ULTIMA INFORMATICA")
    (product_category "Smartphone")
    )
    (relations
    (product_name "Samsung Galaxy A54")
    (shop_name "EL CORTE INGLES")
    (product_category "Smartphone")
    )
    (relations
    (product_name "Samsung Galaxy A54")
    (shop_name "MEDIA MARKT")
    (product_category "Smartphone")
    )
    (relations
    (product_name "Samsung Galaxy M13")
    (shop_name "MEDIA MARKT")
    (product_category "Smartphone")
    )
    (relations
    (product_name "Samsung Galaxy M13")
    (shop_name "MEDIA MARKT")
    (product_category "Smartphone")
    )
    (relations
    (product_name "Samsung Galaxy M13")
    (shop_name "MEDIA MARKT")
    (product_category "Smartphone")
    )

    (relations
    (product_name "Razer Opus")
    (shop_name "WORTEN")
    (product_category "Headset")
    )
    (relations
    (product_name "Razer Opus")
    (shop_name "ULTIMA INFORMATICA")
    (product_category "Headset")
    )
    (relations
    (product_name "Razer Opus")
    (shop_name "EL CORTE INGLES")
    (product_category "Headset")
    )

    (relations
    (product_name "MSI MAG Infinite X2")
    (shop_name "PCCOMPONENTES")
    (product_category "PC")
    )
    (relations
    (product_name "MSI MAG Infinite X2")
    (shop_name "MEDIA MARKT")
    (product_category "PC")
    )
    (relations
    (product_name "MSI MAG Infinite X2")
    (shop_name "WORTEN")
    (product_category "PC")
    )

)
(defglobal ?*id* = 0 ?*minimun_price* = 10000 ?*minimum_ratio* = 0 ?*ratio_product* = "vacio" ?*ratio_shop* = "vacío") 

(deffunction calculate_price (?price ?comission)
    (bind ?price (+ ?price (* ?price ?comission)))
    (return ?price)
)

(deffunction calculate_price_with_delivery (?price ?comission ?delivery_price)
    (bind ?price (+ ?price (* ?price ?comission)))
    (bind ?price (+ ?price ?delivery_price))
    (return ?price)
)

(defrule find_cheapest_product
  ?i <- (i_want ?c ?delivery)
  (products (product_name ?product_name) (category ?c) (price ?price) (quantity ?quantity))
  (relations (product_name ?product_name) (shop_name ?shop_name) (product_category ?c))
  (shop (shop_name ?shop_name) (commission ?commission) (delivery_price ?delivery_price) (delivery_time ?delivery_time) (delivery ?delivery2))
  (test (> ?quantity 0))
  (not (products (category ?c) (price ?p&:(< ?p ?price))))
  (not (shop (delivery ?delivery) (delivery_price ?del_price&:(< ?del_price ?delivery_price)) (commission ?com&:(< ?com ?commission))))
  =>
  (if (eq ?delivery "TRUE")
    then
        (bind ?price_2 (calculate_price_with_delivery ?price ?commission ?delivery_price))
        (printout t "Te recomendamos por precio más barato el "?c " " ?product_name " en " ?shop_name " por " ?price_2 " con un tiempo de llegada de  " ?delivery_time " horas al domicilio"crlf)
        (assert (recommendation (category ?c) (delivery ?delivery) (product_name ?product_name) (shop_name ?shop_name) (price ?price_2) (delivery_time ?delivery_time) (id ?*id*)))
        (bind ?*id* (+ ?*id* 1))
        (printout t "Si quieres puedes comprarlo insertando buy recommendation + cantidad" crlf)
    else
        (bind ?price_2 (calculate_price ?price ?commission))
        (printout t "Te recomendamos por precio más barato el "?c " " ?product_name " en " ?shop_name " por " ?price_2 " puedes comprarlo en tienda cuando quieres" crlf)
        (assert (recommendation (category ?c) (product_name ?product_name) (shop_name ?shop_name) (price ?price_2) (id ?*id*) (delivery "FALSE") (delivery_time 0)))
        (bind ?*id* (+ ?*id* 1))
        (printout t "Si quieres puedes comprarlo insertando buy nombre_de_producto + cantidad + tienda" crlf)
    )
    (retract ?i)
)

(defrule show_recommendations
    ?i <- (show_recommendations)
    =>
    (do-for-all-facts ((?f recommendation)) TRUE
        (printout t "recomendación nº"?f:id": " ?f:product_name " por " ?f:price crlf)
    )
    (printout t "Si quieres comprar una recomendación inserte buy + número de recomendación + cantidad" crlf)
    (retract ?i)
)

(defrule buy_recommendation
  ?i <- (buy ?d ?q)
  (recommendation (id ?d) (category ?c) (delivery ?delivery) (product_name ?product_name) (shop_name ?shop_name) (price ?price) (delivery_time ?delivery_time))
  ?s <- (products (product_name ?product_name) (category ?c) (quantity ?quantity))
  =>
  (if (eq ?delivery "TRUE")
  then
    (printout t "Has comprado el " ?c " " ?product_name " en " ?shop_name " por " (* ?price ?q)" con un tiempo de llegada de " ?delivery_time " horas al domicilio" crlf)
  else
    (printout t "Has comprado el " ?c " " ?product_name " en " ?shop_name " por " (* ?price ?q) " puedes recogerlo en tienda cuando quieres" crlf)
  )
  (bind ?new_quantity (- ?quantity ?q))
  (modify ?s (quantity ?new_quantity))
  (retract ?i)
)

(defrule buy_product
  ?i <- (buy_now ?product_name ?q ?shop_name)
  ?s <- (products (product_name ?product_name) (category ?c) (quantity ?quantity) (price ?price))
  (relations (product_name ?product_name) (shop_name ?shop_name) (product_category ?c))
  (shop (shop_name ?shop_name) (commission ?commission) (delivery_price ?delivery_price) (delivery_time ?delivery_time) (delivery ?delivery))
  =>
  (if (eq ?delivery "TRUE")
  then
    (bind ?price (calculate_price_with_delivery ?price ?commission ?delivery_price))
    (printout t "Has comprado el " ?c " " ?product_name " en " ?shop_name " por " (* ?price ?q) " con un tiempo de llegada de " ?delivery_time " horas al domicilio" crlf)
  else
    (bind ?price (calculate_price ?price ?commission))
    (printout t "Has comprado el " ?c " " ?product_name " en " ?shop_name " por " (* ?price ?q) " puedes recogerlo en tienda cuando quieres" crlf)
  )
  (bind ?new_quantity (- ?quantity ?q))
  (modify ?s (quantity ?new_quantity))
  (retract ?i)
)

(defrule show_products_by_category
    ?i <- (show_products ?c)
    =>
    (do-for-all-facts ((?f products)) TRUE
        (if(eq ?f:category ?c)
            then
            (printout t "producto: "?f:product_name " con precio " ?f:price " y disponibilidad de " ?f:quantity " unidades " crlf)
        )
    )
    (retract ?i)
)

(defrule show_products_shops
    ?i <- (show_products_shops ?product_name)
    (relations (product_name ?product_name) (shop_name ?shop_name) (product_category ?c))
    =>
    (do-for-all-facts ((?f relations)) TRUE
        (if(eq ?f:product_name ?product_name)
            then
            (printout t "producto " ?f:product_name " disponible en "?f:shop_name crlf)
        ))
    (retract ?i)
)

(deffunction assign_value (?quality)
    (if(eq ?quality "C-")
        then
        (return 10)
        )
    (if(eq ?quality "C")
        then
        (return 30)
        )
    (if(eq ?quality "C+")
        then
        (return 50)
        )
    (if(eq ?quality "C++")
        then
        (return 70)
        )
    (if(eq ?quality "B-")
        then
        (return 90)
        )
    (if(eq ?quality "B")
        then
        (return 110)
        )
    (if(eq ?quality "B+")
        then
        (return 130)
        )
    (if(eq ?quality "B++")
        then
        (return 150)
        )
    (if(eq ?quality "A-")
        then
        (return 170)
        )
    (if(eq ?quality "A")
        then
        (return 190)
        )
    (if(eq ?quality "A+")
        then
        (return 210)
        )
    (if(eq ?quality "A++")
        then
        (return 230)
        )
    (if(eq ?quality "S")
        then
        (return 270)
        )
    )

(deffunction get_quality_price (?quality ?price_si)
    (bind ?quality2 (assign_value ?quality))
    (return (/ ?quality2 ?price_si))
)

(deffunction find_ratio (?category ?delivery)
    (bind ?lowest_ratio 0)
    (bind ?lowest_ratio_product "")
    (do-for-all-facts ((?p products) (?s shop) (?r relations))
        (and (eq ?p:category ?category)
             (eq ?r:shop_name ?s:shop_name))
        (if(eq ?delivery "TRUE")
        then
            (bind ?price (calculate_price_with_delivery ?p:price ?s:commission ?s:delivery_price))
        else
            (bind ?price (calculate_price ?p:price ?s:commission)))
        (bind ?ratio (get_quality_price ?p:quality ?price))
        (bind ?ratio (/(round(* ?ratio 100)) 100.0))
        (if (> ?ratio ?lowest_ratio)
            then
            (bind ?lowest_ratio ?ratio)
            (bind ?*ratio_product* ?p:product_name)
            (bind ?*ratio_shop* ?s:shop_name)))
    (return ?lowest_ratio))

(defrule recommend_product_by_quality_price
  ?i <- (i_want_by_qp ?c ?delivery)
  (relations (product_category ?c) (shop_name ?shop_name) (product_name ?product_name))
  (products (product_name ?product_name) (category ?c) (quantity ?quantity) (price ?price))
  ?a <- (shop (shop_name ?shop_name) (commission ?commission) (delivery_price ?delivery_price) (delivery_time ?delivery_time) (delivery ?delivery2))
  (not (shop (delivery ?delivery) (commission ?com&:(< ?com ?commission)) ))
  =>
  (bind ?lowest_ratio 0)
  (bind ?the_ratio (find_ratio ?c ?delivery))
  (if (eq ?delivery "TRUE")
  then
    (bind ?price (calculate_price_with_delivery ?price ?commission ?delivery_price))
  else
    (bind ?price (calculate_price ?price ?commission)))
  (do-for-all-facts ((?f products) (?s shop) (?r relations))
    (and (eq ?f:category ?c) (eq ?r:shop_name ?s:shop_name))
    (if(eq ?delivery "TRUE")
    then
        (bind ?price (calculate_price_with_delivery ?f:price ?s:commission ?s:delivery_price))
    else
        (bind ?price (calculate_price ?f:price ?s:commission)))
    (if (and (eq ?f:product_name ?*ratio_product*) (eq ?s:shop_name ?*ratio_shop*))
        then
        (bind ?the_product_name ?f:product_name)
        (bind ?the_shop_name ?s:shop_name)
        (bind ?the_price ?price)
        (bind ?the_delivery_time ?s:delivery_time)
        (bind ?the_delivery ?s:delivery)
        (bind ?the_delivery_price ?s:delivery_price)
        ))
    (printout t "Te recomendamos por precio-calidad de " ?the_ratio  " el " ?c " " ?the_product_name " en " ?the_shop_name " por " ?the_price " con un tiempo de llegada de " ?the_delivery_time " horas al domicilio" crlf)
    (assert (recommendation (category ?c) (product_name ?the_product_name) (shop_name ?the_shop_name) (price ?the_price) (id ?*id*) (delivery ?the_delivery) (delivery_time ?the_delivery_time)))
    (bind ?*id* (+ ?*id* 1))
    (printout t "Si quieres puedes comprarlo insertando buy recommendation_id" crlf)
    (retract ?i)
    (bind ?*ratio_product* "")
    (bind ?*ratio_shop* "")
    (bind ?*minimum_ratio* 0)
)

(defrule show_minimum_price
    (declare (salience 2))
    ?i <- (a_ver)
    =>
    (printout t "El precio mínimo es de " ?*minimun_price* crlf)
    (printout t "El producto con el ratio mínimo es " ?*ratio_product* crlf)
    (printout t "El ratio mínimo es de " ?*minimum_ratio* crlf)
    (retract ?i)
)
(defrule show_products_by_max_price
    (declare (salience 35))
    ?i <- (i_want_max ?cat ?min_price)
    (products (product_name ?product_name) (price ?price) (category ?category) (quantity ?quantity))
    (relations (product_name ?product_name) (shop_name ?shop_name) (product_category ?category))
    (shop (shop_name ?shop_name) (commission ?commission) (delivery_price ?delivery_price) (delivery_time ?delivery_time) (delivery ?del))
    (test (eq ?cat ?category))
    (test (< ?price ?min_price))
    =>
    (if(eq ?del "TRUE")
    then
        (bind ?new_price_store (calculate_price ?price ?commission))
            (if(< ?new_price_store ?min_price)
            then
            (printout t "Un producto que cumple los requisitos dados es: " ?product_name " cuya categoría es " ?category " en " ?shop_name " por " ?new_price_store " con recogida en tienda" crlf)
            )

        (bind ?new_price_delivery (calculate_price_with_delivery ?price ?commission ?delivery_price))
            (if(< ?new_price_delivery ?min_price)
            then
            (printout t "Dicho producto tiene un precio a domicicio de " ?new_price_delivery crlf)
            )

    else
        (bind ?new_price_store (calculate_price ?price ?commission))
        (if(< ?new_price_store ?min_price)
        then
            (printout t "Un producto que cumple los requisitos dados es: " ?product_name " cuya categoría es " ?category " en " ?shop_name " por " ?new_price_store " con recogida en tienda" crlf)
        )
    )
)

(defrule eliminate_i_want_max
    (declare (salience 1))
    ?i <- (i_want_max ?cat ?min_price)
    =>
    (retract ?i)
)

(defrule show_all_stores_that_have_delivery
    (declare (salience 10))
    ?i <- (store_delivery ?t)
    (shop (shop_name ?n) (location ?l) (cellphone ?c) (delivery ?t))
    =>
    (if (eq ?t "TRUE")
        then
        (printout t "La tienda con delivery es " ?n " ubicada en " ?l " con el número de teléfono " ?c crlf)

        else
        (printout t "La tienda sin delivery es " ?n " ubicada en " ?l " con el número de teléfono " ?c crlf)
    )
    (retract ?i)
    
)

(defrule show_products_by_min_price
    (declare (salience 35))
    ?i <- (i_want_min ?cat ?min_price)
    (products (product_name ?product_name) (price ?price) (category ?category) (quantity ?quantity))
    (relations (product_name ?product_name) (shop_name ?shop_name) (product_category ?category))
    (shop (shop_name ?shop_name) (commission ?commission) (delivery_price ?delivery_price) (delivery_time ?delivery_time) (delivery ?del))
    (test (eq ?cat ?category))
    (test (> ?price ?min_price))
    =>
    (if(eq ?del "TRUE")
    then
    (bind ?new_price_store (calculate_price ?price ?commission))
        (if(> ?new_price_store ?min_price)
        then
        (printout t "Un producto que cumple los requisitos dados es: " ?product_name " cuya categoría es " ?category " en " ?shop_name " por " ?new_price_store " con recogida en tienda" crlf)
        )

    (bind ?new_price_delivery (calculate_price_with_delivery ?price ?commission ?delivery_price))
        (if(> ?new_price_delivery ?min_price)
        then
        (printout t "Dicho producto tiene un precio a domicicio de " ?new_price_delivery crlf)
        )

        else
        (bind ?new_price_store (calculate_price ?price ?commission))
        (if(> ?new_price_store ?min_price)
        then
        (printout t "Un producto que cumple los requisitos dados es: " ?product_name " cuya categoría es " ?category " en " ?shop_name " por " ?new_price_store " con recogida en tienda" crlf)
        )
    )
)

(defrule eliminate_i_want_min
    (declare (salience 1))
    ?i <- (i_want_min ?cat ?min_price)
    =>
    (retract ?i)
)