// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @notice ERC1155 interface to receive single tokens with hook to emit data.
/// @author Modified from Solbase (https://github.com/Sol-DAO/solbase/blob/main/src/tokens/ERC1155/ERC1155.sol)
abstract contract ERC1155TokenReceiver {
    event DataReceived(bytes data);

    function onERC1155Received(
        address,
        address,
        uint256,
        uint256,
        bytes calldata data
    ) public payable virtual returns (bytes4) {
        if (data.length != 0) emit DataReceived(data);

        return this.onERC1155Received.selector;
    }
}