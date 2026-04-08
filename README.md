# Bandana Sahu - QA Engineer Portfolio

A highly professional, modern, and advanced portfolio website for a Software Testing (QA) fresher with 3D animations, glassmorphism effects, and interactive features.

## 🚀 Quick Deploy to GitHub Pages

### Option 1: One-Click Deploy (Recommended)
1. **Install Git** (if not already installed): [Download Git](https://git-scm.com/download/win)
2. **Double-click** `deploy.bat` or `deploy.ps1` in the portfolio folder
3. **Follow the prompts** to enter your GitHub username and repository name
4. **Your portfolio will be live** at `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`

### Option 2: Manual Setup
See [GITHUB_DEPLOYMENT.md](GITHUB_DEPLOYMENT.md) for detailed step-by-step instructions.

## 🌟 Features

### Design & UI
- ✨ Dark theme with glassmorphism + neon glow effects
- 📱 Fully responsive (mobile + desktop)
- 🎯 Smooth scrolling and parallax effects
- 🎨 Modern fonts and clean spacing
- 🌈 Gradient backgrounds and hover animations

### 3D & Animations
- 🎮 3D animated hero section using Three.js
- 🎈 Floating elements (code icons, testing icons)
- 🖱️ Animated cursor with glow effect
- 📜 Scroll-based animations using GSAP
- ⚡ Loading animation screen

### Interactive Sections
- 🏠 **Hero Section**: Animated typing effect with CTA buttons
- 👤 **About Section**: Professional summary with animated skill bars
- 🛠️ **Skills Section**: Categorized skills with animated cards
- 💼 **Projects Section**: Interactive project cards with hover effects
- 🧪 **Testing Demo Section**: Unique interactive QA workflow demo
- 📞 **Contact Section**: Working contact form with animations
- 📄 **Resume Section**: Download functionality

### Special Features
- 🌙 Dark/Light theme toggle
- 📊 Scroll progress bar
- 🎯 Custom cursor with hover effects
- 📧 EmailJS integration for contact form
- 🐛 Interactive bug reporting demo
- 📱 Mobile-friendly hamburger menu

## 🚀 Tech Stack

- **Frontend**: HTML5, CSS3, JavaScript (ES6+)
- **Styling**: Custom CSS with CSS Grid & Flexbox
- **Animations**: GSAP (GreenSock Animation Platform)
- **3D Graphics**: Three.js
- **Email Service**: EmailJS
- **Icons**: Font Awesome
- **Fonts**: Google Fonts (Poppins)

## 📁 Project Structure

```
portfolio/
├── index.html              # Main HTML file
├── assets/
│   ├── css/
│   │   └── style.css       # Main stylesheet
│   ├── js/
│   │   └── script.js       # Main JavaScript file
│   └── images/             # Image assets (add your images here)
├── README.md               # Project documentation
└── .gitignore             # Git ignore file
```

## 🛠️ Setup Instructions

### 1. Clone or Download
```bash
git clone <repository-url>
cd portfolio
```

### 2. EmailJS Configuration (Optional)
To enable the contact form:

1. Sign up at [EmailJS](https://www.emailjs.com/)
2. Create a service and template
3. Replace `YOUR_PUBLIC_KEY`, `YOUR_SERVICE_ID`, and `YOUR_TEMPLATE_ID` in `assets/js/script.js`

```javascript
// In script.js, replace these values:
emailjs.init("YOUR_PUBLIC_KEY");

emailjs.send('YOUR_SERVICE_ID', 'YOUR_TEMPLATE_ID', {
    from_name: name,
    from_email: email,
    message: message
});
```

### 3. Add Your Resume
Replace the sample resume download functionality in `script.js` with your actual resume file:

```javascript
// Replace the resume download section with:
downloadBtn.addEventListener('click', () => {
    const link = document.createElement('a');
    link.href = 'path/to/your/resume.pdf';
    link.download = 'Bandana_Sahu_Resume.pdf';
    link.click();
});
```

### 4. Add Project Images
Add your project images to the `assets/images/` folder and update the project cards in `index.html`:

```html
<div class="project-image" style="background-image: url('assets/images/project1.jpg');">
```

### 5. Deploy

#### GitHub Pages:
1. Push to GitHub repository
2. Go to Settings > Pages
3. Select source branch (main/master)
4. Your site will be available at `https://username.github.io/repository-name`

#### Netlify:
1. Drag and drop the portfolio folder to [Netlify](https://netlify.com)
2. Your site will be live instantly

#### Vercel:
1. Connect your GitHub repository to [Vercel](https://vercel.com)
2. Deploy with one click

## 🎨 Customization

### Colors
Update CSS variables in `style.css`:
```css
:root {
    --primary-color: #00f5ff;      /* Cyan */
    --secondary-color: #ff006e;    /* Pink */
    --accent-color: #8338ec;       /* Purple */
    /* Add your preferred colors */
}
```

### Content
Update personal information in `index.html`:
- Name and title in hero section
- About section content
- Skills and technologies
- Project details
- Contact information

### Animations
Modify animation settings in `script.js`:
```javascript
// Typing animation texts
const texts = [
    'Your Custom Title 1',
    'Your Custom Title 2',
    // Add more titles
];
```

## 📱 Browser Support

- ✅ Chrome (recommended)
- ✅ Firefox
- ✅ Safari
- ✅ Edge
- ⚠️ IE11+ (limited support)

## 🔧 Performance Tips

1. **Optimize Images**: Compress images before adding to `assets/images/`
2. **Lazy Loading**: Images are lazy-loaded by default
3. **Minification**: Consider minifying CSS/JS for production
4. **CDN**: External libraries are loaded from CDN for better performance

## 🐛 Known Issues & Solutions

### Three.js Performance
If 3D animations are slow on older devices:
```javascript
// Reduce particle count in script.js
const particleCount = 500; // Instead of 1000
```

### Mobile Menu
If mobile menu doesn't work:
- Check that hamburger click event is properly bound
- Ensure CSS media queries are correct

## 📞 Support

For any issues or questions:
- 📧 Email: bandanasahu61@gmail.com
- 💼 LinkedIn: [linkedin.com/in/bandanasahu61](https://www.linkedin.com/in/bandanasahu61)
- 🐙 GitHub: [github.com/bandanasahu61](https://github.com/bandanasahu61)

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Acknowledgments

- **Three.js** for 3D graphics
- **GSAP** for smooth animations
- **Font Awesome** for icons
- **Google Fonts** for typography
- **EmailJS** for contact form functionality

---

**Made with ❤️ by Bandana Sahu**

*Designed & Developed for showcasing QA Engineering skills*