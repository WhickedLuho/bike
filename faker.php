<?php
// use the factory to create a Faker\Generator instance
// $tax = 20;
// $faker = Faker\Factory::create();

// for ($i=0; $i < 200; $i++) { 
//     // echo getRandomString();
//     $name = getRandomString();
//     $description = $faker->text(rand(180,250));
//     $quantity = rand(0, 100);
//     $brutto_price = (double) rand(10, 5000);
//     $netto_price = $brutto_price - $brutto_price * ($tax / 100);
//     $discount = rand(0,10);
//     if ($discount > 8) {
//         $discount = rand(1,90);
//     }
//     else{
//         $discount = 0;
//     }

//     $sql = "INSERT INTO products (`id`,`name`, `description`, `image`, `quantity`, `brutto_price`, `netto_price`, `tax`, `discount`, `created_at`, `modified_at`, `deleted_at`)
//                 VALUES ('0', '$name', '$description', 'https://picsum.photos/250/250', $quantity, $brutto_price, $netto_price, $tax, $discount, NULL, NULL, NULL)";
//     if ($conn->query($sql) === TRUE) {
//         echo "New record created successfully";
//     }
//     else {
//         echo "Error: " . $sql . "<br>" . $conn->error;
//     }
// }

// function getRandomString(){
// $faker = Faker\Factory::create();
//     $return_string = null;
//     for ($i=0; $i < 20; $i++) { 
//         $return_string = $faker->word();
//         if (strlen($return_string) >= 6) {
//             break;
//         }
//     }
//     return ucfirst($return_string);
// }
