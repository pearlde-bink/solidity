// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

// contract Ownable{
//     address owner;

//     constructor() {
//         owner = msg.sender;
//     }
//     modifier onlyOwner(){
//          require(msg.sender == owner, "must be owner");
//         _; 
//     }
// }

// contract SecretVault{
//     string secret;

//     constructor(string memory _secret){
//         secret = _secret;
//     }

//     function getSecret() public view returns(string memory){
//         return secret;
//     }
// }

// contract Secret is Ownable{
//     address secretVault;

//     constructor(string memory _secret){
//         SecretVault _secretVault = new SecretVault(_secret);
//         secretVault = address(_secretVault);
//         // super;
//     }

//     function getSecret() public view onlyOwner returns(string memory){
//         return SecretVault(secretVault).getSecret();
//     }

// }
contract A{
    function foo() public pure virtual returns(string memory){
        return "A";
    }
}

contract B is A{
    function foo() public pure virtual override returns(string memory){
        return "B";
    }
}

contract C is A{
    function foo() public pure virtual override returns(string memory){
        return "C";
    }
}

contract D is B, C{ //return "C"
    function foo() public pure virtual override(B, C) returns(string memory){
        return super.foo();
    }
}

contract E is C, B{ //return "B"
    function foo() public pure virtual override(B, C) returns(string memory){
        return super.foo();
    }
}

contract F is A, B{
    function foo() public pure override(A, B) returns(string memory){
        return super.foo();
    }
}

contract G is C, E{
    function foo() public pure override(C, E) returns(string memory){
        return super.foo();
    }
}