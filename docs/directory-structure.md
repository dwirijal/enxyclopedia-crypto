# Directory Structure

This document provides a comprehensive overview of the project's directory structure and organization.

## Root Directory

```
enxyclopedia-crypto/
├── 00-MAIN-DOCS/              # Main documentation and navigation
├── 01-TRADITIONAL-FINANCE/     # Traditional finance content
├── 02-CRYPTO-BLOCKCHAIN/       # Cryptocurrency and blockchain content
├── 03-GLOBAL-MARKETS/         # Global markets content
├── 04-PROFESSIONAL-FINANCE/   # Professional finance content
├── 05-ADVANCED-ANALYSIS/      # Advanced analysis content
├── docs/                      # Project documentation
├── .github/                   # GitHub configuration
├── .obsidian/                 # Obsidian configuration
├── _layouts/                  # Jekyll layout templates
├── assets/                    # Static assets (CSS, images, etc.)
├── index.md                   # Homepage
├── about.md                   # About page
├── search.md                  # Search functionality
├── 404.md                     # 404 error page
├── _config.yml                # Jekyll configuration
├── Gemfile                    # Ruby dependencies
├── CLAUDE.md                  # Claude Code documentation
├── GITHUB-PAGES-SETUP.md     # GitHub Pages setup guide
└── .gitignore                 # Git ignore rules
```

## Content Directories

### 00-MAIN-DOCS/
Main documentation and navigation files.

```
00-MAIN-DOCS/
├── 🌐-Enhanced-File-Structure.md     # Enhanced structure documentation
├── 🌐-Main-Category-Overview.md      # Main navigation hub
├── 📚-Crypto-Knowledge-Base-Index.md  # Knowledge base index
├── 📋-Daftar-Isi-Lengkap-Knowledge-Base.md # Complete table of contents
├── backup.sh                         # Unix backup script
└── backup.bat                        # Windows backup script
```

### 01-TRADITIONAL-FINANCE/
Traditional finance systems and content.

```
01-TRADITIONAL-FINANCE/
├── 01-Money-Banking/
│   ├── 🏛️-Central-Banks-and-Monetary-Policy.md
│   ├── 🏛️-Financial-Regulation-and-Compliance.md
│   ├── 🏛️-Interest-Rates-and-Economic-Impact.md
│   ├── 🏛️-Sejarah-Uang-Dari-Barter-Sampai-Digital.md
│   ├── 🏦-Sistem-Perbankan-Indonesia-Lengkap.md
│   ├── 💳-Payment-Systems-and-Fintech.md
│   └── 📋-Daftar-Isi-Traditional-Money-Banking.md
├── 02-Forex-Markets/
│   ├── 💱-Trading-Forex-Untuk-Pemula-Indonesia.md
│   ├── 📊-Currency-Pairs-and-Majors.md
│   └── 📋-Daftar-Isi-Forex-Markets.md
└── 03-Commodity-Markets/
    ├── ⚙️-Base-Metals-Industrial-Minerals.md
    ├── ⚡-Electricity-and-Power-Markets.md
    ├── ⛽️-Energy-Markets-Oil-Gas.md
    ├── 🌱-Renewable-Energy-Markets.md
    └── 🌾-Agricultural-Commodities.md
```

### 02-CRYPTO-BLOCKCHAIN/
Cryptocurrency and blockchain content.

```
02-CRYPTO-BLOCKCHAIN/
├── 01-Fundamentals/
├── 02-Blockchain-Technology/
├── 03-Cryptocurrency-Analysis/
├── 04-DeFi-Web3/
├── 05-Gaming-NFT/
├── 06-Trading-Investment/
├── 07-Market-Economics/
├── 08-Security-Risk/
├── 09-Advanced-Topics/
├── 10-Indonesia-Specific/
└── 11-Practical-Tutorials/
```

### 03-GLOBAL-MARKETS/
Global markets and international finance.

```
03-GLOBAL-MARKETS/
├── 01-Stock-Markets/
├── 02-Industry-Sectors/
├── 03-Institutional-Finance/
└── 04-Macroeconomics/
```

### 04-PROFESSIONAL-FINANCE/
Professional finance and advanced topics.

```
04-PROFESSIONAL-FINANCE/
├── 01-Financial-Theory/
├── 02-Advanced-Trading/
├── 03-Quantitative-Methods/
├── 04-Corporate-Finance/
└── 05-Financial-Education/
```

### 05-ADVANCED-ANALYSIS/
Advanced analysis and specialized topics.

```
05-ADVANCED-ANALYSIS/
├── 01-Fintech-Innovation/
├── 02-Research-Methods/
├── 03-Advanced-Strategies/
├── 04-Sustainable-Finance/
└── 05-Wealth-Management/
```

## Configuration Files

### Jekyll Configuration
- **`_config.yml`**: Main Jekyll configuration
- **`Gemfile`**: Ruby dependencies
- **`_layouts/`**: Template files for site layout

### GitHub Configuration
- **`.github/workflows/`**: GitHub Actions workflows
- **`.gitignore`**: Files to ignore in Git

### Obsidian Configuration
- **`.obsidian/`**: Obsidian vault configuration
  - `community-plugins.json`: Enabled plugins
  - `core-plugins.json`: Core features
  - Various plugin data and settings

## Documentation

### docs/
Project documentation and guides.

```
docs/
├── README.md                    # Documentation overview
├── getting-started.md          # Quick start guide
├── project-overview.md         # Project introduction
├── development.md              # Development guide
├── deployment.md               # Deployment instructions
├── directory-structure.md      # This file
├── content-organization.md     # Content structure guide
├── technical-stack.md          # Technologies used
├── design-system.md            # Design guidelines
├── contributing.md             # Contribution guidelines
├── content-guidelines.md       # Content standards
├── code-of-conduct.md          # Community guidelines
├── troubleshooting.md           # Common issues
├── faq.md                      # Frequently asked questions
└── glossary.md                 # Key terms
```

## Assets

### assets/
Static assets for the website.

```
assets/
└── css/
    └── style.css               # Main stylesheet (Apple design system)
```

## Key Pages

### Root Level Pages
- **`index.md`**: Homepage with hero section and category cards
- **`about.md`**: Project information and statistics
- **`search.md`**: Search functionality and category browsing
- **`404.md`**: Custom 404 error page

### Navigation
- Navigation is handled through dropdown menus in the layout
- Categories are organized into 5 main domains
- Each domain has subcategories for specific topics

## File Naming Conventions

### Content Files
- **Format**: `📂-Category-Name.md` or `🔍-Topic-Name.md`
- **Emojis**: Use descriptive emoji prefixes for visual organization
- **Language**: All file names and content in Indonesian (bahasa Indonesia)
- **Case**: Use title case for readability

### Documentation Files
- **Format**: `kebab-case.md` (e.g., `getting-started.md`)
- **Language**: English for project documentation
- **Structure**: Organized by purpose and audience

## Special Files

### Automation
- **`backup.sh`** and **`backup.bat`**: Automated git commit scripts
- **`.github/workflows/deploy.yml`**: GitHub Pages deployment workflow

### Project Documentation
- **`CLAUDE.md`**: Comprehensive guide for Claude Code AI
- **`GITHUB-PAGES-SETUP.md`**: GitHub Pages setup instructions

## Best Practices

### Directory Organization
1. **Keep Root Clean**: Only essential files in root directory
2. **Logical Grouping**: Group related files together
3. **Clear Naming**: Use descriptive names for directories and files
4. **Consistent Structure**: Follow established patterns

### File Management
1. **Version Control**: All important files tracked in Git
2. **Documentation**: Document structure and organization
3. **Accessibility**: Keep frequently used files easily accessible
4. **Scalability**: Structure should accommodate growth

### Content Organization
1. **Hierarchical**: Clear parent-child relationships
2. **Modular**: Keep content focused and manageable
3. **Interconnected**: Use internal links extensively
4. **Consistent**: Follow established naming and formatting

## Future Considerations

### Potential Additions
- **`assets/images/`**: For diagrams and illustrations
- **`assets/js/`**: For custom JavaScript functionality
- **`_data/`**: For Jekyll data files
- **`_includes/`**: For reusable content snippets

### Optimization Opportunities
- **Asset Compression**: Minify CSS and optimize images
- **Performance**: Implement lazy loading and caching
- **Accessibility**: Ensure all content meets WCAG standards
- **SEO**: Optimize meta tags and structured data

---

This structure provides a solid foundation for both the Obsidian vault and Jekyll website, ensuring scalability and maintainability.