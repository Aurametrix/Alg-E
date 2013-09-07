//Introduction to Hardware Verification
//Course by Hannes Fršhlich and Axel Scherer, Cadence


Field name: sender, receiver
Type: uint
Value: 212_555_0123, 408_555_0199

Field name: message
Type: string
Value: "This is a test!"
----------------------------------------
Add constraints to limit phone number values
max_number : 999_999_9999
min_number : 100_000_0000
constraint name : user choice

SYNTAX
keep CONSTRAINT_NAME is BOOLEAN_EXPRESSION;
----------------------------------------
SYNTAX: field declaration
(statement, can only be done in structs)

FIELD_NAME : TYPE;
----------------------------------------

----------------------------------------
SYNTAX: assignment 
(action, can only be done in methods)

FIELD_NAME = VALUE;
----------------------------------------


//<'
struct txt {

    // fields of data model for txt, 34 bit integer
   sender :    uint (bits:34);
   receiver :  uint (bits:34);

//constraints
    keep smallest_sender_phone is sender >= 100_000_0000;
    keep largest_sender_phone is sender<= 999_999_9999;
    
    keep smallest_receiver_phone is receiver >= 100_000_0000;
    keep largest_receiver_phone is receiver <= 999_999_9999;  


   message: string;
   
    // this is a method with no parameters
    fill() is {
        // if sender and receiver are not initialized, numbers are random
    
//    sender = 212_555_0123;
//    receiver = 408_555_0199;
    
    
    message="This is a test!";
    
    };

};
//'>
