wire rcv;  //0 if no character recieved and 1 if recieved
reg [19:0] counter_register;

assign trigger = LEDn;

reg trigger;


	  always@ (posedge input_clock) 
			if (rcv == 1)
			begin
				trigger=1
			end
			else
			begin
				//Do counter step
				counter_register <= counter_register + 20'b00000000000000000001;
				//Check Counter
					//If overflow 
						//set trigger=0
			end
				
				
            begin      
            // the following line increments the register by 
            // 1 at each clock trigger 
            counter_register <= counter_register + 4'b0001; 
            end      