const ZamanCoin = artifacts.require("ZamanCoin");

module.exports = function(deployer) {
    deployer.deploy(ZamanCoin);
};