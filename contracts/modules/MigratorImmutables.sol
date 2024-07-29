// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.24;

import {INonfungiblePositionManager} from '@uniswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol';
import {IPositionManager} from '@uniswap/v4-periphery/src/interfaces/IPositionManager.sol';

struct MigratorParameters {
    address v3PositionManager;
    address v4PositionManager;
}

contract MigratorImmutables {
    /// @notice v3PositionManager address
    INonfungiblePositionManager public immutable V3_POSITION_MANAGER;
    /// @notice v4PositionManager address
    IPositionManager public immutable V4_POSITION_MANAGER;

    constructor(MigratorParameters memory params) {
        V3_POSITION_MANAGER = INonfungiblePositionManager(params.v3PositionManager);
        V4_POSITION_MANAGER = IPositionManager(params.v4PositionManager);
    }
}
