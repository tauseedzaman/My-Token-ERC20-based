// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "../node_modules/@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";
import "../node_modules/@openzeppelin/contracts/security/ReentrancyGuard.sol";

// contract MyToken is ERC20Capped(1000 * 10**18), Ownable {
contract MyToken is ERC20Capped, Ownable, ReentrancyGuard {
    mapping(address => uint256) private balances;

    constructor() ERC20("MyToken", "MTK") ERC20Capped(1000 * 10**18) {
        // 1000 wevi
        // _mint(msg.sender, 1000);
    }

    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    function minting(address rec, uint32 amount) external {
        _mint(rec, amount);
    }

    function burn(uint256 amount) public virtual {
        _burn(_msgSender(), amount);
    }

    function burnFrom(address account, uint256 amount) public virtual {
        _spendAllowance(account, _msgSender(), amount);
        _burn(account, amount);
    }
}
