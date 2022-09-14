// SPDX-License-Identifier:  GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

// constructor : 변수의 값을 초기화할 때, 주로 사용한다.

contract A {
    string public name;
    uint256 public age;

    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }

    function change(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }
}
// A를 그냥 바로 배포할 수 없다. 
// 생성자가 초기화가 안되어있기 때문이다.

contract B {
    A instance = new A("yeom", 23);

    function change(string memory _name, uint256 _age) public {
        instance.change(_name, _age);
    }

    function get() public view returns(string memory, uint256){
        return (instance.name(), instance.age());   // solidity 내에서는 여러 개를 리턴할 수 있다.
    }
}

// B 속에 A를 인스턴스화하여 접근하는 것보다 다른 방식을 사용하는 것이 낫다.
// 가스의 소비가 많기 때문이다.
// 스마트 컨트랙트가 가볍다면 허용된다.