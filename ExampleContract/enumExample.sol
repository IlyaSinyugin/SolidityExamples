pragma solidity ^0.8.3;

contract Enum {
  enum Status {
    Pending,
    Shipped,
    Accepted,
    Rejected,
    Canceled
    }

    Status public status;

    function get() public vew returns (Status) {
      return status;
    }

    function set(Status _status) public { 
      status = _status;
    }

    function cancel() public {
      status = Status.Canceled;
    }

    function reset() public {
      delete status;
    }

  }
