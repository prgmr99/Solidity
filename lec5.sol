// SPDX-License-Identifier:  GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec5{
    /* function 이름 () public { // (public, private, internal, external) 변경가능
        // 내용
    }
    */

    /*
    public : 모든 곳에서 접근 가능.
    private : 오직 private이 정의된 자기 컨트랙트에서만 가능. (private이 정의된 자기자신 컨트랙트 내에서 접근불가)
    internal : private처럼 오직 internal이 정의된 자기자신 컨트랙트 내에서만 가능하고, internal이 정의된 컨트랙트를 상속 받은 자식도 가능. private은 자식이어도 접근 불가.
    external : public처럼 모든 곳에서 접근이 가능하나, external이 정의된 자기자신 컨트랙트 내에서 접근 불가.
    */

    // 1.public
    uint256 public a = 5;

    // 2.private
    uint256 private b = 3;
}

contract Public_example{
    uint256 public a = 3;

    function changeA(uint256 _value) public {   // private으로 변경하면 아래의 instance.changeA(_value);에서 에러발생. external해도 가능.
        a = _value;
    }

    function get_a() view public returns (uint256) {
        return a;
    }
}

/*
contract Public_example{
    uint256 external a = 3; // error -> external은 자기자신 컨트랙 내에서 사용 불가.

    function changeA(uint256 _value) external {   
        a = _value; // a를 사용하려면 다른 컨트랙에서 사용해야한다.
    }

    function get_a() view external returns (uint256) {
        return a;
    }
}
*/

contract Public_example2{
    Public_example instance = new Public_example();

    function changeA_2(uint256 _value) public {
        instance.changeA(_value);
    }

    function use_public_example_a() view public returns (uint256) {
        return instance.get_a();
    }
}