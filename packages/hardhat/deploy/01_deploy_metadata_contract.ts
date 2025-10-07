import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";
import { Contract } from "ethers";

const deployMetadata: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Metadata", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  // Get the deployed contract to interact with it after deploying
  const metadata = await hre.ethers.getContract<Contract>("Metadata", deployer);
  console.log("👋 Metadata contract deployed at:", await metadata.getAddress());
};

export default deployMetadata;

deployMetadata.tags = ["Metadata"];
