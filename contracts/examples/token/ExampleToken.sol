pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/erc20/ERC20.sol";

//An Example Token used for Testing
contract ExampleToken is ERC20 {
    constructor(address lender) ERC20() public {
        _mint(lender, 10000);
        increaseAllowance(lender, 100);
    }
}