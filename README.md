# MyNFTMarketplace - Aptos Project

This repository contains an Aptos-based NFT marketplace dApp that features enhanced functionalities for buying, selling, and auctioning NFTs. It includes new features such as auction systems, royalty payments, and advanced filtering for a better user experience.

## Features
### 1. **Auction System**
   - **Description:** Users can create auctions for NFTs, where others can place bids over a set period.
   - **How it works:** The auction runs for a specified duration, and the highest bidder at the end of the auction wins the NFT.
   - **Smart Contract:** Bidding logic is controlled by smart contracts to ensure secure bid tracking.

### 2. **Royalties on Secondary Sales**
   - **Description:** This feature ensures that creators receive a percentage of sales when their NFTs are resold on the marketplace.
   - **How it works:** Royalties are automatically calculated and sent to the creator whenever a secondary sale is completed.

### 3. **NFT Transfers**
   - **Description:** Users can directly transfer NFTs to other wallet addresses through the marketplace interface.
   - **How it works:** A seamless transaction mechanism for transferring NFTs to other users or wallets is integrated.

### 4. **Offer System**
   - **Description:** Users can make offers to buy listed NFTs below their asking price.
   - **How it works:** Sellers can choose to accept or reject the offers made by prospective buyers.

### 5. **Advanced Filtering and Sorting**
   - **Description:** The marketplace view is enhanced with advanced filtering options.
   - **Filters include:** Price range, rarity, date listed, and more.

### 6. **Analytics Dashboard**
   - **Description:** Provides marketplace activity insights, such as total sales, trending NFTs, and more.
   - **How it works:** The dashboard is updated in real-time to provide valuable data for both users and administrators.

### 7. **APT Payments**
   - **Description:** Users can pay for transactions in APT tokens.
   - **How it works:** APT is integrated into the marketplace for both buying and selling NFTs.

### 8. **Minting for All Users**
   - **Description:** Any user connected to the platform can mint NFTs.
   - **How it works:** The minting process is now open to all users (with or without restrictions).

## Installation

### Prerequisites
- **Aptos CLI**: Install the [Aptos CLI](https://github.com/aptos-labs/aptos-core) for compiling and publishing the Move smart contracts.
- **Aptos Network**: Set up an Aptos wallet and connect it to the **devnet** or **testnet**.

### Steps to Get Started

1. **Clone the Repository**
   ```bash
   git clone https://github.com/GauravKarakoti/Aptos.git
   cd MyNFTMarketplace
2. **Install Dependencies**
  - Ensure you have the aptos CLI installed.
  - Navigate to the src folder and make sure all the dependencies are correctly fetched.
    ```bash
     aptos move compile --package-dir ./src --output-dir ./build

3. **Deploy the Contract**
  - To deploy the smart contract on devnet, run:
    ```bash
      aptos move publish --package-dir ./src --profile devnet
4. **Interact with the dApp**
  - Interact with the deployed NFT marketplace via the interface or smart contract functions. More detailed instructions will be added here based on the front-end integration.
## Usage
- NFT Auctions
- Users can create NFT auctions by specifying the NFT ID, the starting bid, and the auction duration. Bidders can place bids, and the contract will determine the winner when the auction ends.
- Making Offers
- Users can make offers on NFTs listed for sale. The seller will receive the offer and can either accept or reject it.
## Royalties
- For every secondary sale of an NFT, the creator receives a percentage of the sale amount.
- Smart Contract Details
## Key Modules
- **Auction Contract**: Implements logic for bidding and auction durations.
- **Marketplace Contract**: Manages NFT listing, buying, and royalty payments.
- **Transfer Contract**: Facilitates the transfer of NFTs between users.
