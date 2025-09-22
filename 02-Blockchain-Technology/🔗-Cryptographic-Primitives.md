# 🔗 Cryptographic Primitives

**Dasar-dasar kriptografi: Hashing, Signatures, Encryption - Foundation keamanan blockchain**

---

## 🔐 Apa itu Cryptographic Primitives?

**Cryptographic Primitives = Building Blocks** - Komponen fundamental kriptografi yang membangun sistem blockchain

### **Peran dalam Blockchain**:
1. **Security**: Melindungi data dan transaksi
2. **Authentication**: Verifikasi identitas
3. **Integrity**: Menjamin data tidak diubah
4. **Non-repudiation**: Tidak bisa menyangkal transaksi
5. **Privacy**: Melindungi informasi sensitif

---

## 🔤 Hash Functions

**Fungsi one-way yang mengubah input apapun menjadi output fixed-length**

### **How Hashing Works**:
```
Input → Hash Function → Fixed-Length Output
"Hello" → SHA-256 → "185f8db3..."
"Hello World" → SHA-256 → "a591a6d4..."
```

### **Properties of Good Hash Functions**:
1. **Deterministic**: Input sama → Output sama
2. **Fast Computation**: Cepat dihitung
3. **Pre-image Resistant**: Sulit cari input dari hash
4. **Second Pre-image Resistant**: Sulit cari input lain dengan hash sama
5. **Collision Resistant**: Sangat sulit cari dua input dengan hash sama
6. **Avalanche Effect**: Perubahan kecil input → Perubahan besar output

### **Common Hash Functions**:
| Algorithm | Output Size | Used In | Security Level |
|-----------|-------------|---------|----------------|
| **SHA-256** | 256 bits | Bitcoin, Many | 128 bits |
| **SHA-3 (Keccak)** | 256/512 bits | Ethereum | 128/256 bits |
| **RIPEMD-160** | 160 bits | Bitcoin Addresses | 80 bits |
| **BLAKE2/BLAKE3** | 256/512 bits | Filecoin, others | 128/256 bits |
| **MD5** | 128 bits | Legacy | Broken |
| **SHA-1** | 160 bits | Legacy | Broken |

### **Hash Functions in Blockchain**:
1. **Block Hashing**: Meng-hash block header
2. **Transaction ID**: Meng-hash transaction data
3. **Merkle Trees**: Mengkombinasi banyak hash
4. **Mining**: Puzzle solving dalam PoW
5. **Address Generation**: Dari public key ke address

---

## ✍️ Digital Signatures

**Metode matematis untuk membuktikan kepemilikan private key**

### **How Digital Signatures Work**:
```
1. Private Key + Message → Signature
2. Public Key + Message + Signature → Verify
3. Jika valid: Pemilik private key menyetujui message
4. Jika invalid: Signature tidak valid atau message diubah
```

### **Signature Components**:
- **Private Key**: Secret, hanya pemilik yang tahu
- **Public Key**: Dibuat dari private key, bisa dibagikan
- **Message**: Data yang ditandatangani
- **Signature**: Output dari signing process
- **Verification**: Proses mengecek signature validity

### **Digital Signature Algorithms**:
| Algorithm | Key Size | Used In | Features |
|-----------|----------|---------|----------|
| **ECDSA** | 256 bits | Bitcoin, Ethereum | Elliptic curve |
| **EdDSA** | 256 bits | Cardano, Solana | Faster, more secure |
| **Schnorr** | 256 bits | Bitcoin (Taproot) | Aggregation support |
| **BLS** | 256 bits | Ethereum 2.0 | Aggregate signatures |
| **RSA** | 2048+ bits | Legacy | Slow, large keys |

### **Signature Applications**:
1. **Transaction Authorization**: Membuktikan pemilik address
2. **Multi-signature**: Multiple approvals
3. **Identity Verification**: KYC/AML integration
4. **Smart Contract**: Function calls dengan signature
5. **Cross-chain**: Bridge operations

---

## 🔒 Encryption & Cryptography

**Proteksi data confidentiality dan privacy**

### **Symmetric Encryption**:
```
Same Key untuk Encrypt & Decrypt
Key + Message → Encrypted Message → Key + Encrypted → Original Message
```

**Algorithms**: AES-256, ChaCha20

### **Asymmetric Encryption**:
```
Public Key untuk Encrypt, Private Key untuk Decrypt
Public Key + Message → Encrypted → Private Key + Encrypted → Original Message
```

**Algorithms**: RSA, ECC, ElGamal

### **Hybrid Encryption**:
```
1. Generate random symmetric key
2. Encrypt message dengan symmetric key
3. Encrypt symmetric key dengan public key
4. Send encrypted message + encrypted key
```

---

## 🌳 Merkle Trees

**Struktur data efisien untuk verifikasi set data besar**

### **How Merkle Trees Work**:
```
Level 0: Transaction Data (Leaves)
Level 1: Hash(Leaf 1 + Leaf 2)
Level 2: Hash(Level 1 Hashes)
Root: Single Final Hash
```

### **Merkle Tree Properties**:
- **Efficient Verification**: O(log n) complexity
- **Tamper-Proof**: Perubahan apapun mengubah root
- **Compact Proof**: Hanya perlu sibling hashes
- **Parallel Processing**: Bisa dihitung paralel

### **Merkle Tree Applications**:
1. **Block Verification**: Verifikasi transaksi dalam block
2. **State Management**: Ethereum state tree
3. **Light Clients**: SPV verification
4. **Data Availability**: Layer 2 solutions
5. **File Storage**: IPFS, Filecoin

---

## 🔐 Advanced Cryptographic Concepts

### **Zero-Knowledge Proofs (ZKPs)**:
```
Prove knowledge without revealing the knowledge
"I know X" → "Here's proof I know X" → "I believe you know X"
```
**Types**: zk-SNARKs, zk-STARKs, Bulletproofs

### **Multi-Party Computation (MPC)**:
```
Compute function on private data without revealing inputs
Party 1: Secret A
Party 2: Secret B
Result: Function(A,B) without revealing A or B
```

### **Homomorphic Encryption**:
```
Compute on encrypted data
Encrypt(A) + Encrypt(B) = Encrypt(A+B)
```

### **Threshold Cryptography**:
```
Split private key into shares
Need t-out-of-n shares to reconstruct
```

---

## 🔍 Cryptographic Security Considerations

### **Common Vulnerabilities**:
1. **Weak Randomness**: PRNG yang predictable
2. **Key Management**: Private key exposure
3. **Implementation Bugs**: Side-channel attacks
4. **Quantum Threat**: Shor's algorithm untuk ECC/RSA
5. **Algorithm Obsolescence**: MD5, SHA-1 broken

### **Best Practices**:
1. **Use Standard Libraries**: Open-source, audited
2. **Proper Key Generation**: Secure entropy sources
3. **Regular Updates**: Algorithm dan library updates
4. **Multiple Layers**: Defense in depth
5. **Formal Verification**: Mathematical proofs

---

## 🚀 Cryptographic Innovations in Blockchain

### **1. Post-Quantum Cryptography**:
- **Lattice-based**: CRYSTALS-Kyber, CRYSTALS-Dilithium
- **Hash-based**: SPHINCS+
- **Code-based**: McEliece cryptosystem
- **Isogeny-based**: SIKE (recently broken)

### **2. Privacy-Preserving Cryptography**:
- **Ring Signatures**: Monero-style privacy
- **Stealth Addresses**: Receiver privacy
- **Confidential Transactions**: Amount hiding
- **ZK-Rollups**: Private computation

### **3. Advanced Signature Schemes**:
- **Schnorr Signatures**: Aggregation support
- **BLS Signatures**: Efficient aggregation
- **Threshold Signatures**: MPC-based
- **Adaptor Signatures**: Atomic swaps

### **4. Verifiable Random Functions (VRFs)**:
- **Unpredictable**: Random tapi verifiable
- **Applications**: Blockchain gaming, NFT minting
- **Implementation**: Chainlink VRF, Algorand VRF

---

## 📊 Cryptographic Primitive Comparison

| Primitive | Primary Use | Security | Performance | Blockchain Examples |
|-----------|-------------|----------|-------------|-------------------|
| **SHA-256** | Hashing | High | Fast | Bitcoin, many |
| **Keccak** | Hashing | High | Fast | Ethereum, others |
| **ECDSA** | Signatures | High | Medium | Bitcoin, Ethereum |
| **EdDSA** | Signatures | Very High | Fast | Cardano, Solana |
| **BLS** | Signatures | High | Medium | Ethereum 2.0 |
| **AES-256** | Encryption | High | Very Fast | Encrypted wallets |
| **zk-SNARKs** | ZK Proofs | High | Slow | ZCash, ZK-Rollups |

---

## 🛡️ Security Best Practices

### **For Developers**:
1. **Use Established Libraries**: Don't roll your own crypto
2. **Constant-Time Operations**: Prevent timing attacks
3. **Secure Random Generation**: CSPRNG only
4. **Key Derivation**: PBKDF2, scrypt, Argon2
5. **Regular Audits**: Professional security audits

### **For Users**:
1. **Secure Storage**: Hardware wallets, secure enclaves
2. **Backup Strategy**: Multiple secure backups
3. **Access Control**: Multi-sig, time locks
4. **Regular Updates**: Keep software updated
5. **Phishing Protection**: Verify URLs, never share keys

---

## 🔗 Related Topics

### **Parent**: [[🔗-Blockchain-Teknologi-Masa-Depan]]
### **Child Topics**:
- [[🔗-Merkle-Trees-Explained]]
- [[🔗-Cryptographic-Accumulators]]

### **Related Topics**:
- [[🛡️-Security-Best-Practices]]
- [[🔗-Zero-Knowledge-Proofs-Deep-Dive]]
- [[🔗-Formal-Verification-of-Smart-Contracts]]
- [[👛-Hardware-Wallet-Guide]]

### **Next**: [[🔗-Merkle-Trees-Explained]]

---

## 📝 Summary

**Key Takeaways**:
1. **Hash Functions**: One-way, fixed-length, deterministic
2. **Digital Signatures**: Prove ownership, non-repudiation
3. **Encryption**: Protect confidentiality and privacy
4. **Merkle Trees**: Efficient verification of large datasets
5. **Advanced Crypto**: ZKPs, MPC, homomorphic encryption

**Security Principles**: Use standard libraries, proper key management, regular updates, defense in depth

**Remember**: Cryptography is mathematically secure, but implementation bugs can break everything!

---

*📚 Lanjutkan ke: [[🔗-Merkle-Trees-Explained]]*
*🔗 Kembali ke: [[🔗-Blockchain-Teknologi-Masa-Depan]]*