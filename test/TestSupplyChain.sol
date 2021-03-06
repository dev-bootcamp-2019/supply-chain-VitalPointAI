pragma solidity ^0.4.13;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SupplyChain.sol";

contract TestSupplyChain {

//Make sure testing is working
//Test initial value of skuCount = 0
function testInitialValueOfSkuCount() public {
    SupplyChain supply = new SupplyChain();
    uint expectedValue = 0;
    Assert.equal(supply.skuCount(), expectedValue, "skuCount starts at 0");
}

//Test addItem
function testAddItem() public {
    SupplyChain supply = new SupplyChain();
    supply.addItem("bear", 100);
    uint expectedSku = 1;
    Assert.equal(supply.skuCount(), expectedSku, "Sku should be 1");
}

    // Test for failing conditions in this contracts
    // test that every modifier is working

    // buyItem

    // test for failure if user does not send enough funds
    // test for purchasing an item that is not for Sale


    // shipItem

    // test for calls that are made by not the seller
    // test for trying to ship an item that is not marked Sold

    // receiveItem

    // test calling the function from an address that is not the buyer
    // test calling the function on an item not marked Shipped

     


}
