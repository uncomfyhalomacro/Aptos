address 0x1 {
    module NFTMarketplace {
        use 0x1::Coin;  // Import Aptos Coin module for transactions
        use 0x1::Signer;
        use 0x1::Vector;

        // Define the structure of an NFT
        struct NFT has store {
            creator: address,
            token_id: u64,
            royalties_percentage: u8, // Creator's royalty percentage
        }

        // Define the NFT collection, storing NFTs in the account
        struct NFTCollection has store {
            nfts: vector<NFT>,
        }

        // Function to mint an NFT
        public fun mint_nft(
            signer: &signer,
            creator: address,
            royalties_percentage: u8
        ): u64 {
            let token_id = 1; // Replace with your logic to generate a unique token_id
            let nft = NFT {
                creator: creator,
                token_id: token_id,
                royalties_percentage: royalties_percentage,
            };

            // Store the NFT in the signer’s account under their collection
            let account = Signer::address_of(signer);
            let collection = borrow_global_mut<NFTCollection>(account);
            Vector::push_back(&mut collection.nfts, nft);

            // Return the minted token_id
            token_id
        }
    }
}
