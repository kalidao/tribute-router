// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.15;

import {Script} from "forge-std/Script.sol";

import {TributeRouter} from "src/TributeRouter.sol";

/// @notice A very simple deployment script.
contract Deploy is Script {
    /// @notice The main script entrypoint.
    /// @return router The deployed contract.
    function run() external returns (TributeRouter router) {
        vm.startBroadcast();
        router = new TributeRouter();
        vm.stopBroadcast();
    }
}
