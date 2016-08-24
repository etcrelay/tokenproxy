//Token like contract
contract Token{
    function transfer(address _to, uint256 _value){}
    function balanceOf(address _address) returns(uint256){}
}

//Token proxy
contract TokenProxy{

    //Token Address
    address TokenAddress = 0x0; 

    //Here are token address
    Token MyToken = Token(TokenAddress);

    //Cold wallet
    address ColdWallet = 0x1;

    //Approve transfer
    function Approve(){
        uint256 TokenBalance = Token.balanceOf(TokenAddress);
        if(TokenBalance > 0){
            MyToken.transfer(ColdWallet, TokenBalance);
            return;
        }
        throw;
    }

}