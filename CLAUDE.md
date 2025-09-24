# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 🎯 Repository Overview

This is a comprehensive Indonesian-language financial markets knowledge base built as an Obsidian vault, recently reorganized into a hierarchical structure. It covers traditional finance, cryptocurrency, global markets, professional finance, and advanced analysis - all written in casual Indonesian language.

**Key Characteristics:**
- **Language**: Indonesian (casual/bahasa sehari-hari)
- **Format**: Obsidian markdown vault with wiki-style links and hierarchical organization
- **Scope**: Complete financial markets education from traditional to crypto
- **Focus**: Practical knowledge for Indonesian financial markets enthusiasts
- **Size**: 1500+ potential articles across 27 major categories in 5 main domains

## 📁 Repository Structure

### Non-Duplicated Hierarchical Organization (Updated September 2025)
```
📁 Financial Markets Knowledge Base/
├── 📄 00-MAIN-DOCS/                    # Main documentation and navigation
│   ├── 🌐-Enhanced-File-Structure.md     # Enhanced structure documentation
│   ├── 🌐-Main-Category-Overview.md      # Main navigation hub
│   ├── 📚-Crypto-Knowledge-Base-Index.md  # Knowledge base index
│   └── 📋-Daftar-Isi-Lengkap-Knowledge-Base.md # Complete table of contents
├── 🏛️ 01-TRADITIONAL-FINANCE/         # Traditional finance systems (3 categories)
│   ├── 01-Money-Banking/                # Money & banking fundamentals
│   ├── 02-Forex-Markets/                # Foreign exchange markets
│   └── 03-Commodity-Markets/            # Commodity markets
├── 💰 02-CRYPTO-BLOCKCHAIN/            # Crypto & blockchain ecosystem (11 categories)
│   ├── 01-Fundamentals/                 # Crypto basics
│   ├── 02-Blockchain-Technology/       # Technical foundations
│   ├── 03-Cryptocurrency-Analysis/     # Crypto ecosystems (renamed)
│   ├── 04-DeFi-Web3/                   # DeFi & Web3 (simplified)
│   ├── 05-Gaming-NFT/                  # NFT & gaming (simplified)
│   ├── 06-Trading-Investment/           # Trading strategies
│   ├── 07-Market-Economics/            # Market economics (renamed)
│   ├── 08-Security-Risk/               # Security & risk (simplified)
│   ├── 09-Advanced-Topics/             # Advanced concepts
│   ├── 10-Indonesia-Specific/          # Local market focus (renumbered)
│   └── 11-Practical-Tutorials/         # Step-by-step guides (renumbered)
├── 📈 03-GLOBAL-MARKETS/              # Global financial markets (4 categories)
│   ├── 01-Stock-Markets/               # International stock exchanges (renumbered)
│   ├── 02-Industry-Sectors/             # Sector analysis (renumbered)
│   ├── 03-Institutional-Finance/        # Institutional finance (renumbered)
│   └── 04-Macroeconomics/              # Economic analysis (maintained)
├── 🎓 04-PROFESSIONAL-FINANCE/         # Professional finance (5 categories)
│   ├── 01-Financial-Theory/            # Finance concepts (renamed)
│   ├── 02-Advanced-Trading/             # Professional trading (maintained)
│   ├── 03-Quantitative-Methods/         # Mathematical finance (renamed)
│   ├── 04-Corporate-Finance/            # Business finance (maintained)
│   └── 05-Financial-Education/          # Financial literacy (maintained)
└── 🔍 05-ADVANCED-ANALYSIS/            # Advanced analysis (5 categories)
    ├── 01-Fintech-Innovation/          # Financial technology (renumbered)
    ├── 02-Research-Methods/            # Analytical techniques (consolidated)
    ├── 03-Advanced-Strategies/         # Sophisticated strategies (renamed)
    ├── 04-Sustainable-Finance/          # ESG investing (renumbered)
    └── 05-Wealth-Management/            # Portfolio management (renumbered)
```

### Key Structure Improvements (September 2025)
- **Eliminated Duplicates**: Removed overlapping "Professional Finance" and "Research Methods" categories
- **Sequential Numbering**: All categories now use 01-XX numbering without gaps
- **Consistent Naming**: Simplified category names (e.g., "DeFi-Web3" instead of "DeFi-Web3-Ecosystem")
- **Clear Separation**: Each category has unique purpose and scope
- **Better Navigation**: Updated table of contents files reflect new structure

## 🔧 Technical Architecture

### Obsidian Vault System
- **Wiki Links**: Use `[[file-name]]` format for internal linking
- **Categories**: 27 subcategories across 5 main domains with hierarchical organization
- **Learning Paths**: Structured progression from beginner to advanced
- **Cross-references**: Extensive linking between related topics
- **Enhanced Structure**: Parent-child relationships with metadata templates
- **Graph View Optimization**: Clear hierarchical relationships for visualization

### Development Commands & Workflow
```bash
# Automated backup (currently missing - needs to be created)
./backup.sh    # Commit changes with timestamps
./backup.bat    # Windows version

# Git operations for manual management
git status      # Check modified files
git add .       # Stage all changes
git commit -m "Update: [description]" # Manual commit
git push        # Push to remote (if configured)

# Content verification
find . -name "*.md" | wc -l    # Count total markdown files
find . -name "*.md" -exec grep -l "[[" {} \; | wc -l  # Count files with internal links
```

### Key Configuration Files
- **.obsidian/community-plugins.json**: Git integration enabled
- **.obsidian/core-plugins.json**: Core Obsidian features configuration
- **.obsidian/workspace.json**: Workspace layout and settings
- **backup.sh/backup.bat**: Automated git commit system (to be created)
- **All content**: Markdown files with Indonesian text

### Obsidian Plugin Configuration
**Enabled Community Plugins:**
- `obsidian-git`: Git integration for version control
- `obsidian-excalidraw-plugin`: Diagram and visual content creation

**Enabled Core Plugins:**
- `file-explorer`, `global-search`, `switcher`, `graph`, `backlink`
- `canvas`, `templates`, `command-palette`, `outline`, `word-count`
- `bookmarks`, `daily-notes`, `note-composer`, `page-preview`

### Backup System (To Be Implemented)
```bash
# Required: Create backup.sh script with:
# - Git add/commit automation
# - Timestamp-based commit messages
# - Regular backup scheduling
# - Conflict resolution handling
```

## 🎨 Content Style & Standards

### Language & Tone
- **Language**: Indonesian (bahasa Indonesia)
- **Style**: Casual, conversational, friendly
- **Voice**: Educational but approachable
- **Target**: Indonesian crypto beginners and enthusiasts
- **Slang**: Use Indonesian crypto slang appropriately

### Content Patterns
- **Headers**: Use emoji prefixes for visual organization
- **Structure**: Hierarchical with clear section breaks
- **Examples**: Include practical examples and code snippets
- **Updates**: Include 2025 market data and current trends
- **Links**: Extensive internal linking with `[[file-name]]` format

### File Naming Convention
- **Format**: `📂-Category-Name.md`
- **Emojis**: Use descriptive emojis as prefixes
- **Language**: Indonesian file names
- **Consistency**: Maintain existing naming patterns

## 🛠️ Working Guidelines

### Content Creation Architecture
This knowledge base follows a **hierarchical knowledge architecture** with clear separation of concerns:

1. **Domain Level** (5 main domains): Broad financial market areas
2. **Category Level** (27 subcategories): Specialized topics within domains
3. **Article Level**: Specific educational content with practical examples
4. **Cross-References**: Extensive `[[file-name]]` linking for knowledge discovery

### When Adding New Content
1. **Check Non-Duplicated Structure**: Review `📁-ENHANCED-NON-DUPLICATED-STRUCTURE.md` first
2. **Follow Sequential Numbering**: Use 01-XX format within each domain
3. **Check Category Overview**: Review `🌐-Main-Category-Overview.md` for placement
4. **Maintain Links**: Add cross-references to related topics using `[[file-name]]` format
5. **Update Navigation**: Modify relevant table of contents files
6. **Use Indonesian**: Write all content in casual Indonesian (bahasa sehari-hari)
7. **Apply Enhanced Structure**: Use parent-child relationships and metadata

### Content Architecture Patterns
- **Learning Progression**: Each domain progresses from beginner to advanced concepts
- **Practical Examples**: Include real-world Indonesian market examples
- **Current Data**: Reference 2025 market conditions and trends
- **Cross-Domain Links**: Connect related concepts across different domains
- **Graph Optimization**: Create content that visualizes well in Obsidian graph view

### Content Creation Rules
- **Prioritize Indonesian**: All content must be in Indonesian
- **Be Practical**: Focus on actionable knowledge
- **Include Examples**: Use real-world crypto examples
- **Stay Current**: Reference 2025 market conditions
- **Link Extensively**: Use Obsidian `[[file-name]]` links

### File Editing Protocol
1. **Read First**: Always read existing files before editing
2. **Check Links**: Verify all internal links work
3. **Maintain Style**: Follow existing casual Indonesian tone
4. **Update Structure**: Keep wiki structure synchronized
5. **Test Navigation**: Ensure content flows logically

## 🔄 Workflow Instructions

### Standard Content Update Process
```bash
# 1. Read existing structure and content
Read the relevant files in the repository

# 2. Check enhanced structure for placement
Review 🌐-Enhanced-File-Structure.md

# 3. Update main category overview if needed
Edit 🌐-Main-Category-Overview.md

# 4. Create or modify content files in appropriate subcategory
Write/Edit individual guide files

# 5. Update central index if needed
Edit 📚-Crypto-Knowledge-Base-Index.md

# 6. Update file structure overview if categories changed
Edit 📁-FILE-STRUCTURE-OVERVIEW.md

# 7. Run backup (optional - automatic)
# The backup.sh script handles this
```

### Quality Assurance & Validation
```bash
# Link validation (manual process)
grep -r "\[\[.*\]\]" . --include="*.md" | cut -d: -f2 | sort | uniq -c  # Find broken links
find . -name "*.md" -exec grep -L "\[\[.*\]\]" {} \;  # Find files without internal links

# Content structure verification
find . -name "*.md" -exec head -5 {} \; | grep -E "(# 🎯|# 🏛️|# 💰|# 📈|# 🔍)"  # Verify header structure
find . -name "*.md" -exec wc -l {} \; | sort -n  # Identify very short files that may need expansion

# Graph view optimization
find . -name "*.md" -exec grep -c "\[\[.*\]\]" {} \; | sort -n  # Find well-connected vs isolated files
```

### Quality Checks
- **Language**: All content must be in Indonesian (bahasa Indonesia)
- **Links**: Verify all `[[file-name]]` links are valid and functional
- **Structure**: Follow 5-main-domain hierarchical organization with sequential numbering
- **Placement**: Ensure content is in correct subcategory (no duplicates)
- **Metadata**: Apply parent-child relationships consistently
- **Relevance**: Content should match 2025 financial markets landscape
- **Completeness**: Cover topics comprehensively with practical examples
- **Graph View**: Verify relationships display correctly in Obsidian graph
- **Cross-References**: Each article should link to related topics in other domains

## 📊 Current Content Scope

### 5 Main Domains with 27 Subcategories (Non-Duplicated Structure)

#### **🏛️ Traditional Finance (3 subcategories)**
1. **01-Money-Banking** - Traditional finance systems and monetary policy
2. **02-Forex-Markets** - Foreign exchange trading and currency analysis
3. **03-Commodity-Markets** - Energy, metals, agricultural trading

#### **💰 Cryptocurrency & Blockchain (11 subcategories)**
1. **01-Fundamentals** - Basic crypto concepts and blockchain introduction
2. **02-Blockchain-Technology** - Technical foundations and consensus mechanisms
3. **03-Cryptocurrency-Analysis** - Specific crypto ecosystems and analysis
4. **04-DeFi-Web3** - DeFi protocols and Web3 applications
5. **05-Gaming-NFT** - NFTs, gaming, and metaverse ecosystems
6. **06-Trading-Investment** - Crypto trading strategies and market analysis
7. **07-Market-Economics** - Market dynamics and economic impact
8. **08-Security-Risk** - Security practices and risk management
9. **09-Advanced-Topics** - Specialized advanced concepts and future trends
10. **10-Indonesia-Specific** - Local market focus and Indonesian context
11. **11-Practical-Tutorials** - Step-by-step guides and hands-on tutorials

#### **📈 Global Markets (4 subcategories)**
1. **01-Stock-Markets** - International stock exchanges and global equity
2. **02-Industry-Sectors** - Sector analysis and industry-specific insights
3. **03-Institutional-Finance** - Sovereign wealth and institutional trading
4. **04-Macroeconomics** - Economic analysis and policy impacts

#### **🎓 Professional Finance (5 subcategories)**
1. **01-Financial-Theory** - Finance concepts and theoretical frameworks
2. **02-Advanced-Trading** - Professional trading techniques and strategies
3. **03-Quantitative-Methods** - Mathematical finance and quantitative analysis
4. **04-Corporate-Finance** - Business finance and corporate financial management
5. **05-Financial-Education** - Financial literacy and educational content

#### **🔍 Advanced Analysis (5 subcategories)**
1. **01-Fintech-Innovation** - Financial technology and digital innovation
2. **02-Research-Methods** - Analytical techniques and research methodologies
3. **03-Advanced-Strategies** - Sophisticated investment and analysis strategies
4. **04-Sustainable-Finance** - ESG investing and sustainable finance
5. **05-Wealth-Management** - Portfolio management and wealth preservation

### Key Metrics (2025)
- **Total Files**: 1500+ potential articles across 27 subcategories
- **Main Categories**: 5 major domains
- **Subcategories**: 27 specialized areas
- **Market Data**: September 2025 current
- **Target Audience**: Indonesian financial markets enthusiasts
- **Complexity**: Beginner to advanced level
- **Language**: Indonesian (bahasa Indonesia)
- **Focus**: Practical financial markets education

## ⚠️ Important Restrictions

### Content Rules
- **Language Only**: Write only in Indonesian language
- **No Malicious Content**: Security content must be defensive only
- **Educational Focus**: Prioritize learning over speculation
- **Current Data**: Use 2025 market information
- **Practical Value**: Focus on actionable knowledge
- **Hierarchical Structure**: Follow 5-main-domain organization
- **Enhanced Links**: Use parent-child relationships and metadata

### Technical Restrictions
- **Obsidian Format**: Maintain `[[file-name]]` linking system
- **Markdown Only**: All files must be .md format
- **Backup System**: Don't interfere with backup.sh operations
- **Plugin Compatibility**: Content should work with existing Obsidian plugins
- **Directory Structure**: Maintain hierarchical organization with 5 main domains
- **File Naming**: Follow established emoji and naming conventions
- **Cross-References**: Use enhanced linking patterns with anchor IDs

### Security Guidelines
- **Defensive Only**: Security content must be for protection
- **No Credential Harvesting**: Never request private keys or seeds
- **Privacy Focus**: Prioritize user security and privacy
- **Ethical Content**: All content must be legally and ethically sound

## 🎯 Success Metrics

### Content Quality
- **Comprehensiveness**: Cover topics thoroughly
- **Accuracy**: Ensure technical accuracy
- **Clarity**: Make complex topics understandable
- **Relevance**: Content should be current and useful

### User Experience
- **Navigation**: Easy to find and follow related topics
- **Learning Progression**: Logical beginner to advanced flow
- **Practical Value**: Users can apply the knowledge
- **Engagement**: Content is interesting and accessible

## 🔄 Maintenance & Updates

### Regular Updates Needed
- **Market Data**: Update crypto market data regularly
- **New Technologies**: Add emerging crypto technologies
- **Regulatory Changes**: Update Indonesia-specific regulations
- **Security Practices**: Keep security advice current
- **Platform Changes**: Update for new crypto platforms

### Version Control
- **Automatic Backups**: backup.sh handles daily commits
- **Change Tracking**: Git maintains full version history
- **Rollback Capability**: Can revert to previous versions
- **Collaboration Ready**: Structure supports multiple contributors

---

## 🚀 Quick Start for New Claude Instances

### First Steps
1. **Read Non-Duplicated Structure**: Understand the updated 5-main-domain organization in `📁-ENHANCED-NON-DUPLICATED-STRUCTURE.md`
2. **Check Main Category Overview**: Review the navigation hub in `🌐-Main-Category-Overview.md`
3. **Verify Current Structure**: Check recent implementation in `🚀-STRUCTURE-IMPLEMENTATION-COMPLETE.md`
4. **Sample Content**: Read existing guides to understand Indonesian writing style and structure
5. **Current Coverage**: Review what's already covered in each subcategory to avoid duplicates

### When Adding Content
1. **Choose Main Domain**: Select from the 5 main domains (Traditional Finance, Crypto, Global Markets, Professional Finance, Advanced Analysis)
2. **Select Subcategory**: Pick appropriate sequential-numbered subcategory (01-XX format)
3. **Check for Duplicates**: Ensure topic isn't already covered in any domain
4. **Update Structure Documentation**: Add to `📁-ENHANCED-NON-DUPLICATED-STRUCTURE.md` if creating new categories
5. **Update Navigation**: Modify relevant table of contents files
6. **Create Content**: Write in casual Indonesian (bahasa sehari-hari) with proper emoji headers
7. **Add Cross-References**: Use extensive `[[file-name]]` linking to related topics across domains

### Critical Architecture Rules
- **NO DUPLICATE CATEGORIES**: Each category must have unique purpose and scope
- **SEQUENTIAL NUMBERING**: Use 01-XX format within each domain (no gaps)
- **INDONESIAN LANGUAGE ONLY**: All content must be in bahasa Indonesia
- **CROSS-DOMAIN LINKING**: Connect related concepts across different domains
- **GRAPH OPTIMIZATION**: Create content that visualizes well in Obsidian graph view
- **PRACTICAL FOCUS**: Prioritize actionable knowledge for Indonesian market context

### Content Quality Standards
- **Current Data**: Reference 2025 financial markets landscape and trends
- **Local Context**: Include Indonesian market examples and regulatory context
- **Learning Progression**: Structure content from beginner to advanced within each domain
- **Visual Organization**: Use emoji prefixes and clear section headers
- **Link Density**: Each article should link to 3-5 related topics

---

**Last Updated**: September 2025
**Repository Status**: Active Development
**Language**: Indonesian (Bahasa Indonesia)
**Target Audience**: Indonesian Financial Markets Enthusiasts
**Complexity Level**: Beginner to Advanced
**Organization**: 5 Main Domains, 27 Subcategories
**Scope**: Traditional Finance, Cryptocurrency, Global Markets, Professional Finance, Advanced Analysis

*This knowledge base is designed to be the most comprehensive Indonesian-language financial markets education resource available, covering everything from traditional banking to cutting-edge cryptocurrency and blockchain technology.*