// SPDX-License-Identifier:  GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

// 상속

contract Father {
    string public lastname = "Kim";
    string public firstname = "Jung";
    uint256 public money = 100;

    constructor(string memory _firstname) public {
        firstname = _firstname;
    } // 아들의 이름은 변경하도록하는 생성자.

    function get_lastname() view public returns(string memory) {
        return lastname;
    }

    function get_firstname() view public returns(string memory) {
        return firstname;
    }

    function get_money() view public returns(uint256) {
        return money;
    }
}

contract Son is Father("Joon") { // is 상속해야할 contract, 이렇게 하면 간단하게 상속은 되었다.

}