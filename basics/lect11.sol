// SPDX-License-Identifier:  GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

// overriding : 간단하게 덮어쓰기라고 생각하면 된다.

contract Father {
    constructor(string memory _firstname) public {
        firstname = _firstname;
    } // 아들의 이름은 변경하도록하는 생성자.


    string public lastname = "Kim";
    string public firstname = "Jung";
    uint256 public money = 100;

    function get_lastname() view public returns(string memory) {
        return lastname;
    }

    function get_firstname() view public returns(string memory) {
        return firstname;
    }

    function get_money() view public virtual returns(uint256) { // overriding은 부모에게 virtual 선언
        return money;
    }
}

contract Son is Father { 
    constructor() Father("Joon") {}
    
    uint256 public earning = 0;
    function work() public {
        earning += 100;
    }

    function get_money() view public override returns(uint256) { // overriding한 함수의 이름은 똑같이 가져오지만 내용은 변한다.
        return money + earning;
    }
}