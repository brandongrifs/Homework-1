pragma solidity ^0.4.16;


contract Fibonacci {
	event  fibonacciFound(uint position, uint result);

	function calculate(uint position) returns (uint result) {

		uint n1=1;
		uint n2=1;
		if(position==0)
		return n1;
		else if(position==1)
		return n2;

		uint count=2;
		uint newResult = n1+n2;
		n1=n2;
		n2=newResult;
		while(count<position){
			count++;
			newResult = n2+n1;
			n1=n2;
			n2=newResult;
		}
		fibonacciFound(position, newResult);
		return newResult;
	}


	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() {require(msg.value==0);}
}
