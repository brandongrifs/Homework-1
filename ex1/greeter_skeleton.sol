pragma solidity ^0.4.13;

contract greeter {
	/* Add one variable to hold our greeting */
	string[4] greeting = ["Hello World", "Hey Dude", "What's Poppin'", "Yooooo"];
	uint count=0;
	uint calls=0;

	function greeter(string _greeting) public {
		bytes memory greets = bytes(_greeting);
		count = greets.length%3;
		calls = calls +1;
	}

	function greet() constant returns (string)  {
		return greeting[count];
	}
}
