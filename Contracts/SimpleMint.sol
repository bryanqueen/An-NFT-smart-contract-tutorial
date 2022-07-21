//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4; //THIS SHOWS THE VERSION OF SOLIDITY THAT IS BEING USED.

//IMPORTING OPENZEPPELIN, THIS IS A RESOURCE THAT IS VERY IMPORTANT IN CREATING THIS SMART CONTRACT
import 'openzeppein/contracts/token/ERC721/ERC721.sol';
import 'openzeppelin/contracts/access/Ownable.sol';

//This is the contract below
contract BryanMintContract is ERC721, Ownable {
    // Inside This NFT contract, some variables will  be created. They include

uint256 public mintPrice = 0.05 ether  //UINT256 IS AN INTEGER VARIABLE. IT HAS THE BIGGEST VARIABLE SIZE
uint256 public totalSupply; //THIS VARIABLE WILL KEEP TRACK OF THE CURRENT NUMBER OF THE SUPPLY AS THEY ARE BEING MINTED
uint256 public maxSupply; //THIS IS THE TOTAL NUMBER OF SUPPLY
bool public isMintEnabled;   //IT DETERMINES WHEN PEOPLE CAN MINT THE NFT TOKEN
mapping(address => uint256) public mintedWallets;  //IT KEEPS TRACK OF THE NUMBERS OF MINTING A WALLET HAS DONE, i.e WE DON'T WANT A SINGLE WALLET TO MINT ALL THE NFT's
}
