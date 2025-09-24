# Getting Started

Welcome to the Financial Markets Knowledge Base! This guide will help you get up and running quickly.

## Prerequisites

- **Git**: For version control
- **GitHub Account**: For repository access and collaboration
- **Basic Knowledge**: Understanding of financial markets (helpful but not required)
- **Text Editor**: For editing content (VS Code, Obsidian, or similar)

## Quick Setup

### 1. Clone the Repository

```bash
git clone https://github.com/dwirijal/enxyclopedia-crypto.git
cd enxyclopedia-crypto
```

### 2. Local Development (Optional)

If you want to test the Jekyll site locally:

```bash
# Install Ruby dependencies
bundle install

# Start local development server
bundle exec jekyll serve
```

The site will be available at `http://localhost:4000`

### 3. Repository Structure

```
enxyclopedia-crypto/
├── 00-MAIN-DOCS/          # Main documentation
├── 01-TRADITIONAL-FINANCE/ # Traditional finance content
├── 02-CRYPTO-BLOCKCHAIN/   # Cryptocurrency content
├── 03-GLOBAL-MARKETS/     # Global markets content
├── 04-PROFESSIONAL-FINANCE/ # Professional finance content
├── 05-ADVANCED-ANALYSIS/  # Advanced analysis content
├── docs/                   # Project documentation
├── _layouts/              # Jekyll layouts
├── assets/                # CSS and other assets
├── index.md              # Homepage
├── about.md              # About page
└── search.md             # Search functionality
```

## Content Organization

### 5 Main Domains

1. **Traditional Finance** (🏛️)
   - Money & Banking
   - Forex Markets
   - Commodity Markets

2. **Cryptocurrency & Blockchain** (💰)
   - Fundamentals
   - Blockchain Technology
   - Trading & Investment
   - DeFi & Web3
   - And more...

3. **Global Markets** (📈)
   - Stock Markets
   - Industry Sectors
   - Institutional Finance
   - Macroeconomics

4. **Professional Finance** (🎓)
   - Financial Theory
   - Advanced Trading
   - Quantitative Methods
   - Corporate Finance

5. **Advanced Analysis** (🔍)
   - Fintech Innovation
   - Research Methods
   - Advanced Strategies
   - Sustainable Finance

## First Steps

### For Readers

1. **Start with the Homepage**: `index.md` provides an overview
2. **Browse by Category**: Use the navigation dropdown menus
3. **Search Content**: Use the search page or GitHub search
4. **Follow Learning Paths**: Content progresses from beginner to advanced

### For Contributors

1. **Read the Guidelines**: Check `docs/content-guidelines.md`
2. **Choose a Category**: Select an appropriate domain and subcategory
3. **Create Content**: Follow the established format and style
4. **Add Links**: Connect to related topics using `[[file-name]]` format
5. **Test Locally**: Use `bundle exec jekyll serve` to preview changes

## Essential Tools

### Obsidian (Optional)
- **Plugin**: `obsidian-git` for version control
- **Plugin**: `obsidian-excalidraw` for diagrams
- **Setting**: Enable community plugins in `.obsidian/`

### Development Tools
- **Jekyll**: For local testing and building
- **Markdown Editor**: Any editor with Markdown support
- **Git**: For version control and collaboration

## Key Files to Know

- **`CLAUDE.md`**: Comprehensive project documentation
- **`_config.yml`**: Jekyll configuration
- **`Gemfile`**: Ruby dependencies
- **`index.md`**: Homepage content
- **`about.md`**: Project information
- **`search.md`**: Search functionality

## Common Tasks

### Adding New Content

1. Choose appropriate category folder
2. Create new `.md` file with emoji prefix
3. Add front matter if needed
4. Write content in Indonesian (bahasa Indonesia)
5. Add internal links to related topics
6. Update navigation files if necessary

### Running Tests

```bash
# Check for broken links
bundle exec jekyll doctor

# Build site
bundle exec jekyll build

# Serve locally
bundle exec jekyll serve
```

### Deployment

The site automatically deploys to GitHub Pages when you push to the `master` branch. No manual deployment is needed.

## Getting Help

- **Documentation**: Check the `docs/` directory
- **GitHub Issues**: Report bugs or request features
- **Discussions**: Ask questions and share ideas
- **Email**: Contact the maintainer directly

## Next Steps

1. **Explore the Content**: Browse the knowledge base
2. **Set Up Local Environment**: Install dependencies for development
3. **Join the Community**: Contribute or provide feedback
4. **Stay Updated**: Watch the repository for changes

---

**Happy learning and contributing!** 🚀