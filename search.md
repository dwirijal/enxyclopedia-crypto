---
layout: default
title: Search
permalink: /search/
---

<div class="apple-container">
    <div class="apple-content">
        <h1>Search Knowledge Base</h1>

        <p>Search through our comprehensive financial markets knowledge base to find the information you need.</p>

        <div class="apple-mt-6">
            <div class="apple-search">
                <i class="fas fa-search apple-search-icon"></i>
                <input
                    type="text"
                    id="search-input"
                    class="apple-search-input"
                    placeholder="Search articles, topics, and more..."
                    style="width: 100%; max-width: 600px;"
                >
            </div>
        </div>

        <div id="search-results" class="apple-mt-8">
            <p class="apple-body-small">Start typing to search...</p>
        </div>

        <div class="apple-mt-8">
            <h3>Browse by Category</h3>
            <div class="apple-grid apple-grid-2 apple-mt-6">
                <div class="apple-card">
                    <div class="apple-card-header">
                        <div class="apple-card-icon" style="background: linear-gradient(135deg, #007AFF, #0051D5);">
                            <i class="fas fa-university"></i>
                        </div>
                        <div>
                            <h4 class="apple-card-title">Traditional Finance</h4>
                            <p class="apple-card-subtitle">3 Categories</p>
                        </div>
                    </div>
                    <div class="apple-card-content">
                        <ul>
                            <li><a href="{{ "/01-TRADITIONAL-FINANCE/01-Money-Banking/" | relative_url }}">Money & Banking</a></li>
                            <li><a href="{{ "/01-TRADITIONAL-FINANCE/02-Forex-Markets/" | relative_url }}">Forex Markets</a></li>
                            <li><a href="{{ "/01-TRADITIONAL-FINANCE/03-Commodity-Markets/" | relative_url }}">Commodity Markets</a></li>
                        </ul>
                    </div>
                </div>

                <div class="apple-card">
                    <div class="apple-card-header">
                        <div class="apple-card-icon" style="background: linear-gradient(135deg, #FF9500, #FF6B00);">
                            <i class="fab fa-bitcoin"></i>
                        </div>
                        <div>
                            <h4 class="apple-card-title">Cryptocurrency</h4>
                            <p class="apple-card-subtitle">11 Categories</p>
                        </div>
                    </div>
                    <div class="apple-card-content">
                        <ul>
                            <li><a href="{{ "/02-CRYPTO-BLOCKCHAIN/01-Fundamentals/" | relative_url }}">Fundamentals</a></li>
                            <li><a href="{{ "/02-CRYPTO-BLOCKCHAIN/02-Blockchain-Technology/" | relative_url }}">Blockchain Technology</a></li>
                            <li><a href="{{ "/02-CRYPTO-BLOCKCHAIN/04-DeFi-Web3/" | relative_url }}">DeFi & Web3</a></li>
                            <li><a href="{{ "/02-CRYPTO-BLOCKCHAIN/06-Trading-Investment/" | relative_url }}">Trading & Investment</a></li>
                        </ul>
                    </div>
                </div>

                <div class="apple-card">
                    <div class="apple-card-header">
                        <div class="apple-card-icon" style="background: linear-gradient(135deg, #34C759, #248A3D);">
                            <i class="fas fa-globe"></i>
                        </div>
                        <div>
                            <h4 class="apple-card-title">Global Markets</h4>
                            <p class="apple-card-subtitle">4 Categories</p>
                        </div>
                    </div>
                    <div class="apple-card-content">
                        <ul>
                            <li><a href="{{ "/03-GLOBAL-MARKETS/01-Stock-Markets/" | relative_url }}">Stock Markets</a></li>
                            <li><a href="{{ "/03-GLOBAL-MARKETS/02-Industry-Sectors/" | relative_url }}">Industry Sectors</a></li>
                            <li><a href="{{ "/03-GLOBAL-MARKETS/03-Institutional-Finance/" | relative_url }}">Institutional Finance</a></li>
                        </ul>
                    </div>
                </div>

                <div class="apple-card">
                    <div class="apple-card-header">
                        <div class="apple-card-icon" style="background: linear-gradient(135deg, #AF52DE, #8E3CC0);">
                            <i class="fas fa-microscope"></i>
                        </div>
                        <div>
                            <h4 class="apple-card-title">Advanced Topics</h4>
                            <p class="apple-card-subtitle">5 Categories</p>
                        </div>
                    </div>
                    <div class="apple-card-content">
                        <ul>
                            <li><a href="{{ "/05-ADVANCED-ANALYSIS/01-Fintech-Innovation/" | relative_url }}">Fintech Innovation</a></li>
                            <li><a href="{{ "/05-ADVANCED-ANALYSIS/02-Research-Methods/" | relative_url }}">Research Methods</a></li>
                            <li><a href="{{ "/05-ADVANCED-ANALYSIS/04-Sustainable-Finance/" | relative_url }}">Sustainable Finance</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="apple-mt-8">
            <h3>Popular Topics</h3>
            <div class="apple-grid apple-grid-3 apple-mt-6">
                <div class="apple-card">
                    <div class="apple-card-header">
                        <div class="apple-card-icon" style="background: linear-gradient(135deg, #007AFF, #0051D5);">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <div>
                            <h4 class="apple-card-title">Technical Analysis</h4>
                        </div>
                    </div>
                    <div class="apple-card-content">
                        <p>Learn chart patterns, indicators, and trading strategies.</p>
                    </div>
                </div>

                <div class="apple-card">
                    <div class="apple-card-header">
                        <div class="apple-card-icon" style="background: linear-gradient(135deg, #34C759, #248A3D);">
                            <i class="fas fa-shield-alt"></i>
                        </div>
                        <div>
                            <h4 class="apple-card-title">Security</h4>
                        </div>
                    </div>
                    <div class="apple-card-content">
                        <p>Crypto security, wallet protection, and risk management.</p>
                    </div>
                </div>

                <div class="apple-card">
                    <div class="apple-card-header">
                        <div class="apple-card-icon" style="background: linear-gradient(135deg, #FF9500, #FF6B00);">
                            <i class="fas fa-coins"></i>
                        </div>
                        <div>
                            <h4 class="apple-card-title">DeFi</h4>
                        </div>
                    </div>
                    <div class="apple-card-content">
                        <p>Decentralized finance protocols and yield farming.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
// Simple search functionality using GitHub search
document.getElementById('search-input').addEventListener('keypress', function(e) {
    if (e.key === 'Enter') {
        const searchTerm = e.target.value.trim();
        if (searchTerm) {
            window.open(`https://github.com/dwirijal/enxyclopedia-crypto/search?q=${encodeURIComponent(searchTerm)}`, '_blank');
        }
    }
});

// Add live search functionality
document.getElementById('search-input').addEventListener('input', function(e) {
    const searchTerm = e.target.value.trim();
    const resultsDiv = document.getElementById('search-results');

    if (searchTerm.length < 2) {
        resultsDiv.innerHTML = '<p class="apple-body-small">Start typing to search...</p>';
        return;
    }

    // Show loading state
    resultsDiv.innerHTML = '<p class="apple-body-small">Searching...</p>';

    // In a real implementation, you would integrate with a search API
    // For now, we'll show a message directing to GitHub search
    setTimeout(() => {
        resultsDiv.innerHTML = `
            <div class="apple-card">
                <div class="apple-card-content">
                    <h4>Search GitHub Repository</h4>
                    <p>For comprehensive search results, press Enter or click below to search our GitHub repository:</p>
                    <div class="apple-mt-4">
                        <a href="https://github.com/dwirijal/enxyclopedia-crypto/search?q=${encodeURIComponent(searchTerm)}" target="_blank" class="apple-button">
                            <i class="fab fa-github mr-2"></i>Search on GitHub
                        </a>
                    </div>
                </div>
            </div>
        `;
    }, 500);
});
</script>