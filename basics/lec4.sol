// SPDX-License-Identifier:  GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec4{
    /* function 이름 () public { // (public, private, internal, external) 변경가능
        // 내용
    }
    */

    // 1. Parameter (X), return값 (X) function
    // 2. Parameter (O), return값 (X) function
    // 3. Parameter (O), return값 (O) function
    
    uint public a = 3;
    // 1.
    function changeA1() public {
        a = 5;
    }

    // 2.
    function changeA2(uint _value) public {
        a = _value;
    }

    // 3. 
    function changeA3(uint _value) public returns(uint256) {
        a = _value;
        return a;
    }
}