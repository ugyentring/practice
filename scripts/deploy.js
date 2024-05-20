const hre = require("hardhat");

async function main() {
  const currentTimestampInSeconds = Math.round(Date.now() / 1000);
  const OneYearInSeconds = 365 * 24 * 60 * 60;

  const unlockedTime = currentTimestampInSeconds + OneYearInSeconds;

  const lockAmount = hre.ethers.utils.parseEther("1");
  console.log(lockAmount)
}
main().catch((error) => {
  console.error(error);
  process.exit(1);
});

module.exports = main;
