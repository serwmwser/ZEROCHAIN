let tokenFactory;
let accounts = [];

window.addEventListener('load', async () => {
  if (window.ethereum) {
    window.web3 = new Web3(ethereum);
    try {
      accounts = await ethereum.request({ method: 'eth_requestAccounts' });
      initContract();
    } catch (error) {
      console.error("User denied account access");
    }
  } else {
    console.log("Non-Ethereum browser detected");
  }
});

async function initContract() {
  const response = await fetch('TokenFactory.json');
  const contractJSON = await response.json();
  
  tokenFactory = new web3.eth.Contract(
    contractJSON.abi,
    '0xYourTokenFactoryAddress' // Замените после деплоя
  );
}

async function createToken() {
  const name = document.getElementById('tokenName').value;
  const symbol = document.getElementById('tokenSymbol').value;
  const supply = document.getElementById('tokenSupply').value;
  
  const result = await tokenFactory.methods.createToken(
    name,
    symbol,
    web3.utils.toWei(supply, 'ether')
  ).send({ from: accounts[0] });
  
  document.getElementById('result').innerHTML = `
    Token created at address: ${result.events.TokenCreated.returnValues.tokenAddress}
  `;
}
