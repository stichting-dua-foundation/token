// contracts/DUAToken.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DUAToken is ERC20 {
    /*
        Ecosystem & Treasury	    300,000,000
        Governance & LP	            200,000,000
        Team	                    150,000,000
        Partners	                60,000,000
        Advisors	                60,000,000
        Market.Hack., Events    	50,000,000
        DUA Fund                	110,000,000
        Private Sale	            20,000,000
        Public Sale	                30,000,000
        Pre-Sale	                20,000,000

        Total Supply:       	    1,000,000,000
    */
    // Addresses
    address ecosystemTreasury = 0x6E986D703bDea744a11d5b603BE632A903626A21;
    uint256 ecosystemTreasuryAmount = 300000000 * 10**18;

    address governanceLP = 0x2598B78FA8EF2e20473c15d34F23f4E1753AEeB3;
    uint256 governanceLPAmount = 200000000 * 10**18;

    address team = 0xA39141ddE42CdC8b750B07CFD511Cb745E093f83;
    uint256 teamAmount = 150000000 * 10**18;

    address partners = 0xC9feFB79a75657a6B83bE2D078B08858EaB7e558;
    uint256 partnersAmount = 60000000 * 10**18;

    address advisors = 0x796E641A6942C79a245204571586a7b3763b675d;
    uint256 advisorsAmount = 60000000 * 10**18;

    address markHackathonEvents = 0x2Bcb1313cDd4FC05E2cd02B9b555eE3Fc11F62d6;
    uint256 markHackathonEventsAmount = 50000000 * 10**18;

    address DUAFund = 0x6aAee655aD29467A1bCcB0A46735Ed498277370D;
    uint256 DUAFundAmount = 110000000 * 10**18;

    address privateSale = 0x8d8cB3236EBA210f26D81C1fF6B26431072789eA;
    uint256 privateSaleAmount = 20000000 * 10**18;
    
    address publicSale = 0x5346617c4fCd83542FDdb7149F8fb07d76d99555;
    uint256 publicSaleAmount = 30000000 * 10**18;

    address preSale = 0x1E81CE3f9282A325247991815CB2394e2B6E2d55;
    uint256 preSaleAmount = 20000000 * 10**18;

    constructor() ERC20("DUA", "DUA") {
        mintAll();
    }

    function mintAll() private {
        //mint all of the tokens to their addresses
        _mint(ecosystemTreasury, ecosystemTreasuryAmount);
        _mint(governanceLP, governanceLPAmount);
        _mint(team, teamAmount);
        _mint(partners, partnersAmount);
        _mint(advisors, advisorsAmount);
        _mint(markHackathonEvents, markHackathonEventsAmount);
        _mint(DUAFund, DUAFundAmount);
        _mint(privateSale, privateSaleAmount);
        _mint(publicSale, publicSaleAmount);
        _mint(preSale, preSaleAmount);
    }
}
