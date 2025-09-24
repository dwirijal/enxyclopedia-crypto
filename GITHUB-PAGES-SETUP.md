# GitHub Pages Setup Guide

This guide explains how to set up and deploy the Financial Markets Knowledge Base to GitHub Pages.

## Prerequisites

- A GitHub repository named `enxyclopedia-crypto`
- GitHub account with push access
- Content already organized in the repository

## Setup Steps

### 1. Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on "Settings" tab
3. Scroll down to "GitHub Pages" section
4. Under "Source", select "GitHub Actions"
5. The deployment workflow will automatically handle the build and deployment

### 2. Configuration Files

The repository includes all necessary configuration files:

- `_config.yml` - Jekyll configuration
- `.github/workflows/deploy.yml` - GitHub Actions workflow
- `Gemfile` - Ruby dependencies
- `_layouts/` - Layout templates
- `assets/css/` - Stylesheets

### 3. Local Development (Optional)

To test locally before deploying:

```bash
# Install Ruby dependencies
bundle install

# Start local development server
bundle exec jekyll serve

# Build the site
bundle exec jekyll build
```

### 4. Deployment

The site will automatically deploy when you push to the `master` branch. The GitHub Actions workflow will:

1. Install dependencies
2. Build the Jekyll site
3. Deploy to GitHub Pages

## URL Structure

Once deployed, your site will be available at:
```
https://dwirijal.github.io/enxyclopedia-crypto/
```

## Custom Domain (Optional)

To use a custom domain:

1. Go to repository Settings → Pages
2. Under "Custom domain", enter your domain (e.g., `finankb.com`)
3. Configure DNS settings to point to GitHub Pages

## Monitoring Deployment

- Check the "Actions" tab in your repository for deployment status
- View deployment logs to troubleshoot any issues
- The site will be deployed to the `gh-pages` branch automatically

## Troubleshooting

### Common Issues:

1. **Build Failures**: Check the GitHub Actions logs for error messages
2. **Styling Issues**: Ensure all CSS files are properly referenced
3. **Link Issues**: Verify that all internal links use `{{ relative_url }}`
4. **Plugin Errors**: Make sure all Jekyll plugins are GitHub Pages compatible

### Getting Help:

- Check the [GitHub Pages documentation](https://docs.github.com/en/pages)
- Review the [Jekyll documentation](https://jekyllrb.com/docs/)
- Open an issue in the repository for specific problems

## Features

This GitHub Pages setup includes:

- **Apple-inspired Design**: Clean, modern interface
- **Responsive Layout**: Works on all devices
- **SEO Optimized**: Meta tags and structured data
- **Search Integration**: GitHub repository search
- **Collections**: Organized content structure
- **RSS Feed**: Automatic feed generation
- **Sitemap**: SEO-friendly sitemap

## Content Organization

The site is organized into 5 main collections:

1. **Traditional Finance** (`01-TRADITIONAL-FINANCE/`)
2. **Cryptocurrency & Blockchain** (`02-CRYPTO-BLOCKCHAIN/`)
3. **Global Markets** (`03-GLOBAL-MARKETS/`)
4. **Professional Finance** (`04-PROFESSIONAL-FINANCE/`)
5. **Advanced Analysis** (`05-ADVANCED-ANALYSIS/`)

Each collection has its own permalink structure and can be navigated using the dropdown menus.

## Performance Optimization

- **Preconnected Fonts**: Faster font loading
- **Optimized Images**: Proper image sizing and formats
- **Minified CSS**: Efficient stylesheet delivery
- **CDN Integration**: External resources loaded from CDNs
- **Cache Headers**: Proper browser caching

## Security

- **HTTPS Only**: Secure connections enforced
- **Content Security Policy**: Protection against XSS attacks
- **Sanitized Output**: Safe HTML generation
- **No Server-Side Processing**: Static site security

## Maintenance

The site requires minimal maintenance:

- **Content Updates**: Add or modify markdown files
- **Dependency Updates**: Periodically update Ruby gems
- **Design Updates**: Modify CSS and layout files
- **Performance**: Monitor page load times

---

**Note**: This setup is specifically configured for GitHub Pages and may require adjustments for other hosting platforms.