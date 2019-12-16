# README

- The book cab and assign cab api's are present in the Customer Controller (app/controllers/api/v1/customer_controller)

- The End Trip api is present in the Cab Controller (app/controllers/api/v1/customer_controller)

- Different Model used is present under App/models

- the names of the Api's are present in the routes.rb file (config/routes.rb)

- For the cab_booking api you must pass Customer_id along with the Api (Post Request)

- For the find_near_by_cab api you must pass ride_id along with the Api (Get Reequest)

- For the end_ride api you must pass ride_id along with the Api (Post Request)

- Using Geocoder gem for the purpose of getting latitude and longitude as well distance between 2 points
