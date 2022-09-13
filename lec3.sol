// SPDX-License-Identifier:  GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec3{
    // 1 ether = 10^9 gwei = 10^18 wei
    // 0.00000000000000001 ether = 1^-18 = 1 wei
    // 0.01 ether = 10^16 wei

    // gwei -> 가스를 낼 때 사용하는 단위.
    // 가스 -> smart contract를 사용할 때 지불하는 비용
    // etherium blockchain과 상호작용을 하려면 가스를 사용할 수 밖에 없다.

    // 보안적 측면에서 가스는 DDos 같은 공격을 방지할 수 있다.
     
    uint256 public value1 = 1 ether;
    uint256 public value2 = 1 wei;
    uint256 public value3 = 1 gwei;
}