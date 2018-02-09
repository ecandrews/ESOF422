!create cust1:Customer
!create m1:Movie
!create m2:Movie
!create r1:Rental
!create r2:Rental

!set cust1.name := 'Lizzie'!set m1.priceCode := PriceCode::regular
!set m2.priceCode := PriceCode::family
!set m1.title := 'Movie1'!set m2.title := 'Movie2'!set r1.daysRented := 3
!set r2.daysRented := 2

!insert (cust1, r1) into custRentals
!insert (cust1, r2) into custRentals
!insert (r1, m1) into movRental
!insert (r2, m2) into movRental

!cust1.Statement()