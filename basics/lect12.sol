// SPDX-License-Identifier:  GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract Father {
    uint256 public FMoney = 500;
    function getFName() public pure returns(string memory) {
        return "Joseph";
    }

    function getMoney() public view virtual returns(uint256) {
        return FMoney;
    }
}

contract Mother {
    uint256 public MMoney = 500;
    function getMName() public pure returns(string memory) {
        return "Sunny";
    }

    function getMoney() public view virtual returns(uint256) {
        return MMoney;
    }
}

contract Son is Father, Mother {     // 두 개의 컨트랙트 상속받음.
    function getMoney() public view override(Father, Mother) returns(uint256) { // override를 쓰고 두 개의 컨트랙트를 넣어줘야 한다.
        return FMoney + MMoney;
    }
}  