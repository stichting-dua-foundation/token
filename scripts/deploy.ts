import { ethers } from "hardhat";
import hre from "hardhat";

async function main() {
  // We get the token contract to deploy
  const DUAToken = await ethers.getContractFactory("DUAToken");

  const DToken = await DUAToken.deploy();
  await DToken.deployed();
  const DTokenAddr = DToken.address;
  console.log("DUAToken deployed to:", DToken.address);

  await timeout(10000);
  await hre.run("verify:verify", {
    address: DTokenAddr,
    contract: "contracts/DUAToken.sol:DUAToken",
  });

  function timeout(ms: number) {
    return new Promise((resolve) => setTimeout(resolve, ms));
  }
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
