function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  require(newOwner != address(this), "Ownable: new owner is the contract itself");
  _transferOwnership(newOwner);
}

function _transferOwnership(newOwner) {
  emit OwnershipTransferred(owner(), newOwner);
  owner_ = newOwner;
}