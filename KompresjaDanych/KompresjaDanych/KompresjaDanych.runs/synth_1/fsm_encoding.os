
 add_fsm_encoding \
       {Encoder.current_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} }

 add_fsm_encoding \
       {Driver.current_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 101} {100 011} {101 110} {110 100} }
