pragma solidity ^0.5.0;

import "../interfaces/IBorrower.sol";
import "@openzeppelin/contracts/token/erc20/ERC20.sol";

contract ExampleBorrower is IBorrower {
    function borrow(address token, address supplier, uint256 amount) external returns (bool) {
        return ERC20(token).transfer(supplier, amount);
    }
}