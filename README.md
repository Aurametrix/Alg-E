Hardware Verification Language, HVL, is a programming language used to verify the 
designs of electronic circuits written in a hardware description language. 
HVLs typically include features of a high-level programming language like C++ or Java 
as well as features for easy bit-level manipulation similar to those found in HDLs. 

E is a hardware verification language (HVL) which is tailored to implementing highly 
flexible and reusable verification testbenches.
http://www.eda.org/twiki/bin/view.cgi/P1647/WebHome
==================================================
Anything outside the markers is a comment
<'
extend sys {
  // This is a comment Verilog style
  -- This is a comment in VHDL style
  post_generate() is also {
    out("... and everything else within the markers is executable code.");
  };
};
'>