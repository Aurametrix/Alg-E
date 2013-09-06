//Introduction to Hardware Verification
//Course by Hannes Fršhlich and Axel Scherer, Cadence


Field name: sender, receiver
Type: uint
Value: 212_555_0123, 408_555_0199

Field name: message
Type: string
Value: "This is a test!"
----------------------------------------

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

    // fields of data model for txt
   sender: uint;
   receiver: uint;
   message: string;
   
   unit sender, receiver;
   string message;

    // this is a method with no parameters
    fill() is {
        // assignments
    message="This is a test!";
    sender = 212_555_0123;
    receiver = 408_555_0199;
    };

};
//'>
