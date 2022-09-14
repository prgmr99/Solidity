// SPDX-License-Identifier:  GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

// instance를 쓰는 이유는 하나의 컨트랙트에서 다른 컨트랙트에 접근할 때 사용한다.
// 하나의 컨트랙트에만 모든 코드를 넣지 않기 때문이다.
// 쪼개진 여러개의 컨트랙트를 연결해줘야한다.
// 아래의 예제는 B 컨트랙트에 A 컨트렉트를 연결해볼 것이다.
// 즉, B에서 A를 사용할 수 있게 되는 것이다.

contract A {
    uint256 public a = 1;

    function change(uint256 _value) public {
        a = _value;
    }
}

contract B {

    // instance 생성, 이름(instance1)은 아무거나 써도 된다.
    A instance1 = new A(); 

    // instance를 통해서 변수와 함수를 접근해보자. 그렇다고 원본 a의 값이 변경되지는 않는다. 복사값으로 생각하면 된다.
    function get_A() public view returns (uint256) {
        return instance1.a();
    }

    function change_A(uint256 _value) public {
        instance1.change(_value);
    }
}