// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title CharonVault
 * @dev An Account Abstraction (ERC-4337) compatible vault that holds user assets.
 * It grants execution rights to the Charon Agent ONLY IF the heartbeat timeout is breached.
 */
interface ICharonVault {
    // Emitted when the dead man's switch is triggered
    event FlatlineDetected(uint256 timestamp);
    // Emitted when inheritance is distributed
    event InheritanceExecuted(address indexed beneficiary, uint256 amount);

    /**
     * @dev Called by the Charon backend agent. 
     * Will revert if the last active timestamp is within the safe threshold.
     */
    function triggerCyberWill(bytes calldata distributionPayload) external;

    /**
     * @dev Called by the user during their lifetime to reset the death timer.
     */
    function pingHeartbeat() external;
    
    /**
     * @dev Returns the blocks or timestamp since the user's last interaction.
     */
    function timeSinceLastPing() external view returns (uint256);
}
