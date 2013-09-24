message can't exceed 140 characters


<'
    type pseudo_word_t : [OMG, LOL, BRB, PLS, ASAP, cool]; 
    type phone_number :  uint (bits:34) [100_000_0000..900_000_0000];
    
    // dynamic class txt
    struct txt{


   // fields
   sender :     phone_number;
   receiver:    phone_number;  

   message: string;
   msg_size : uint(bits:8) [1..140];

   
    fill() is {
    var word : pseudo_word_t
    
    while TRUE do {
         gen word;
         if (str_len(message) + 1 + str_len(word.as_a(string)) <= msg_size) {
            message = append(message, word.to_string(), " ");
	     } else {
            break;
         };
      };
   };

	
};


'>