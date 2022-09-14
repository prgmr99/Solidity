// SPDX-License-Identifier:  GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec5{
    /* function 이름 () public { // (public, private, internal, external) 변경가능
        // 내용
    }
    */

    /*
    function get_a() view external returns (uint256)
    */

    /*
    view : function 밖의 변수들을 읽을 수 있으나 변경 불가능
    pure : function 밖의 변수들을 읽지 못하고, 변경도 불가능
    view와 pure 둘 다 명시하지 않을 때: function밖의 변수들을 읽어서 변경
    */

    // 1. view
    uint256 public a = 1;

    function read_a() public view returns(uint256) {
        return a+2;
    }

    // 2. pure
    function read_b() public pure returns(uint256) {
        uint256 b = 1;
        return 4+2+b;
    }
    // function내의 변수들만 사용(읽음)

    // 3. view X  pure X
    function read_c() public returns(uint256) {
        a = 11;
        return a;
    }
}