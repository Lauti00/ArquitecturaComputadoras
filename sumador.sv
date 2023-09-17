/*
1-El modulo tiene que tener el mismo nombre del proyecto que cree
2-Tenemos 2 entradas de 4 bits y cin que va a cargar el acarreo(inicializa en 0)
*/

module sumador (input logic [3:0]a, b, input logic cin,
					output logic [3:0] y , output logic cout) ; //Cout representa el acarreo de la salida
 
	assign {y , cout} = a+b+cin;
	/*
	Utilizamos la manipulacion de datos para guardar el valor en mas de un lugar
	Suma bit a bit los valores de a y b y el acarreo del cin
	El resultado de la suma se va a guardar en y , y el acarreo en cout
	*/
	
endmodule 

module sumadorNot(input logic [3:0]a ,b,input logic cin,
						output logic [3:0] y , output logic cout);
		
		logic [3:0] b_neg;
		assign b_neg= ~b;
		sumador sumNot(a,b_neg , cin,y,cout); //Instancion el modulo sumador
		
		
endmodule

module restador(input logic [3:0]a , b , input logic cin,
					output logic [3:0] y , output logic cout);
					
assign {y,cout} = a + (~b) + cin; //Realizo la resta , calculando el complemento de b 


endmodule
