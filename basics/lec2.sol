// SPDX-License-Identifier:  GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec2{
    
    // data type
    // boolean, bytes, address, uint

    // reference type
    // string, Arrays, struct

    // mapping type

    // boolean: true / false
    bool public b = false;

    // ! || == && can be used as operator.
    bool public b1 = !false; // true
    bool public b2 = false || true; // true
    bool public b3 = false == true; // false
    bool public b4 = false && true; // false


    // bytes 1~32
    bytes4 public bt1 = 0x12345678; // 4bytes, can decide size
    bytes public bt2 = "string";    // can store strings


    // address: 20bytes
    address public add1 = 0xf8e81D47203A594245E36C48e151709F0C19fBe8;


    // int vs uint 
    // int: contains negative numbers
    // uint: doesn't contain negative numbers

    // int8
    // -2^7 ~ 2^7-1
    int8 public it = 4;

    // uint8 = unsigned integer 
    // 0 ~ 2^8-1

    // uint is usually used -> rarely use negative numbers
    uint256 public uit = 234124;

    // + - * / can be used

    // uint8 public aa = 257; -> error: out of range 

}