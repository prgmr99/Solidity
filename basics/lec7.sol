// SPDX-License-Identifier:  GPL-30
pragma solidity >= 0.7.0 < 0.9.0;


contract lec7 {
    /* 
    storage : 대부분의 변수, 함수들이 저장되며 영속적으로 저장되어 가스비가 비싸다.
    memory : 함수의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장됩니다.
            그러나, storage처럼 영속적이지 않고 함수 내에서만 유효하기에 storage보다 가스비가 싸다.
    Colldata : 주로 external function의 파라미터에서 사용된다.
    stack : EVM (Etherium Virtual Machine)에서 stack data를 관리할 때 쓰는 영역인데 1024MB로 제한적이다.
    */

    // function -string
    // string은 기본 데이터타입이 아니기 때문에 메모리 영역 할당한다.
    function get_string(string memory _str) public pure returns (string memory) {
        return _str;
    }

    // 기본 데이터타입은 default로 메모리 영역을 할당받는다.
    function get_uint(uint256 _ui) public pure returns (uint256) {
        return _ui;
    }
}