cover packet_ended using per_unit_instance is {
  item size : uint cur_packet.size using  
    ignore = size > 2048,  
    ranges = {
     range([0..1023],     "illegal too short", UNDEF, 1);
     range([1024],        "legal shortest", UNDEF, 1);
     range([1025..2047],  "legal ", UNDEF, 1);
     range([2048],        "legal longest", UNDEF, 1);  
  };
};
