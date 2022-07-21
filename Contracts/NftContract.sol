//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.4

import 'openzeppein/contracts/token/ERC721/ERC721.sol';
import 'openzeppein/contracts/access/Ownable.sol';

contract NftContract is ERC721, Ownable {
    uint256 public mintCost = 0.06 ether;
    uint256 public totalSupply;
    uint256 public currentSupply;
    bool public isMintEnabled;
    mapping(address => uint256) public mintedWallets
}