// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.22 < 0.9.0; // had to add the config pragma version in truffle-config file.

// Proof of Existence contract, version 1
contract ProofOfExistence1 {
  // state
  bytes32 public proof;

  // calculate and store the proof for a document
  // *transactional function*
  function notarize(string document) {
    proof = proofFor(document);
  }

  // helper function to get a document's sha256
  // *read-only function*
  function proofFor(string document) constant returns (bytes32) {
    return sha256(document);
  }
}