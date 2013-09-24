message can't exceed 140 characters


<'

    type phone_number :  uint (bits:34) [100_000_0000..900_000_0000];
    
    // dynamic class with four fields
    struct call{


   // fields
   sender :     phone_number;
   receiver:    phone_number;  

   message: string;
   msg_size : uint(bits:8) [1..140];

   
    fill() is {
    var number : byte [0..9]
    for IT from 1 to msg_size do {
    gen number;
    //string event: append to message
    message = append(message, number);
    
    };


};
'>

