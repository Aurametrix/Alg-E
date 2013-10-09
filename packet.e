Modeling a packet 
GUIDANCE
Field names: address, length
Type: uint - 2 and 6 bits respectively

Field name: payload
Type: list of byte

Filed name: parity
Type: byte


SYNTAX: sized list
FIELD_NAME [SIZE] : list of TYPE;


<'
struct packet_s{


   // HEADER 
   // address     
    address :uint(bits:2) 
     
   // length
    length :uint(buts:6)
    // 6 remaining bits of the byte


   // PAYLOAD
   // payload is a list of bytes, length added as sizing parameter
    payload [length] : list of byte; 

   // PARITY
   // ending with byte of parity
	parity :byte

};
'>

