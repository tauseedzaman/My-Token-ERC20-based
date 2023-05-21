// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;
import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("MyToken", "MTK") {
        // 1000 wevi
        _mint(msg.sender, 1000);
    }
}
