// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.8;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/Address.sol";

import "../../interfaces/IDexHandler.sol";
/*
 * DexHandlerAbstract 
 */

abstract
contract DexHandler is IDexHandler {
    using SafeMath for uint256;
    using Address for address;

    address public dex;

    constructor(address _dex) public {
        require(_dex.isContract(), 'dex-handler::constructor:dex-is-not-a-contract');
        dex = _dex;
    }

    function isDexHandler() external override view returns (bool) {
        return true;
    }
        
}
