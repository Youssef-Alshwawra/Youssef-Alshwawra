<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Yousef alshwawra — Developer</title>
  <meta name="description" content="Yousef alshwawra — Fullstack Developer profile & GitHub stats" />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700;800&display=swap" rel="stylesheet">

  <style>
    :root{
      --bg:#0f1724;           /* dark background fallback */
      --card:#0b1220aa;
      --glass: rgba(255,255,255,0.06);
      --accent: linear-gradient(90deg,#7c3aed,#06b6d4);
      --muted: #94a3b8;
      --glass-border: rgba(255,255,255,0.06);
      --glass-strong: rgba(255,255,255,0.04);
    }
    [data-theme="light"]{
      --bg: #f5f7fb;
      --card: rgba(255,255,255,0.7);
      --glass: rgba(255,255,255,0.7);
      --accent: linear-gradient(90deg,#6d28d9,#0891b2);
      --muted: #475569;
      --glass-border: rgba(0,0,0,0.06);
      --glass-strong: rgba(0,0,0,0.03);
    }

    *{box-sizing:border-box}
    html,body{height:100%; margin:0; font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,"Helvetica Neue",Arial; background: radial-gradient(1200px 600px at 10% 10%, rgba(124,58,237,0.06), transparent), radial-gradient(800px 400px at 90% 90%, rgba(6,182,212,0.03), transparent); color: #e6eef8}
    body{background-color:var(--bg); -webkit-font-smoothing:antialiased; -moz-osx-font-smoothing:grayscale; padding:28px;}

    .container{max-width:1000px;margin:0 auto;display:grid;grid-template-columns: 1fr; gap:20px;}
    @media(min-width:980px){ .container{grid-template-columns: 2fr 360px;} }

    .card{background:linear-gradient(180deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01)); border:1px solid var(--glass-border); border-radius:14px; padding:18px; box-shadow: 0 6px 30px rgba(2,6,23,0.6); backdrop-filter: blur(8px);}

    header{display:flex;justify-content:space-between;align-items:center;gap:12px;margin-bottom:6px}
    .profile{display:flex; gap:16px; align-items:center}
    .avatar{
      width:84px;height:84px;border-radius:22px;border:2px solid rgba(255,255,255,0.06); overflow:hidden; display:flex;align-items:center;justify-content:center;
      background:linear-gradient(135deg,#7c3aed,#06b6d4); color:white; font-weight:700; font-size:22px;
      box-shadow:0 8px 30px rgba(7,12,22,0.6);
    }

    .title h1{font-size:22px;margin:0;line-height:1}
    .title p{margin:4px 0 0 0;color:var(--muted);font-size:13px}

    .actions{display:flex;gap:8px;align-items:center}
    .btn{display:inline-flex; align-items:center; gap:8px; padding:8px 12px; border-radius:10px; cursor:pointer; font-weight:600; font-size:13px; border:1px solid var(--glass-border); background:transparent; color:inherit}
    .btn.ghost{background:transparent}
    .btn.accent{background:var(--accent);color:white;border:none}
    .icon{width:18px;height:18px;display:inline-block;vertical-align:middle;filter:invert(1) brightness(2)}
    [data-theme="light"] .icon{filter:none}

    /* Typing effect container */
    .greeting{font-weight:800;font-size:20px;display:flex;align-items:center;gap:10px}
    .cursor{width:10px;height:24px;background:linear-gradient(90deg,#fff,#fff);opacity:0.9;animation:blink 1s steps(2) infinite}
    @keyframes blink{0%,50%{opacity:1}51%,100%{opacity:0}}

    /* columns */
    .grid{display:grid; gap:14px}
    .grid.cols-2{grid-template-columns: 1fr 1fr}
    @media(max-width:680px){ .grid.cols-2{grid-template-columns: 1fr} }

    /* tech chips */
    .chips{display:flex;flex-wrap:wrap;gap:8px;margin-top:10px}
    .chip{display:inline-flex;align-items:center;gap:8px;padding:8px 10px;border-radius:10px;background:var(--glass-strong);border:1px solid var(--glass-border);font-size:13px}
    .chip img{width:20px;height:20px;object-fit:contain;border-radius:4px}

    /* stat tiles */
    .stats{display:flex;gap:10px;margin-top:12px}
    .stat{flex:1;padding:10px;border-radius:10px;background:linear-gradient(180deg,rgba(255,255,255,0.02),transparent);text-align:center;border:1px solid var(--glass-border)}
    .stat .num{font-weight:800;font-size:18px}
    .stat .lbl{font-size:12px;color:var(--muted);margin-top:6px}

    .section-title{display:flex;justify-content:space-between;align-items:center;margin-bottom:8px}
    .muted{color:var(--muted);font-size:13px}

    /* languages bars */
    .lang-list{display:flex;flex-direction:column;gap:10px}
    .lang-item{display:flex;align-items:center;gap:10px}
    .lang-name{width:96px;font-size:13px;color:var(--muted)}
    .bar-wrap{flex:1;background:linear-gradient(90deg, rgba(255,255,255,0.02), transparent);height:12px;border-radius:8px;overflow:hidden;border:1px solid var(--glass-border)}
    .bar-fill{height:12px;border-radius:8px;background:var(--accent)}

    /* quote */
    .quote{font-style:italic;color:#dbeafe;padding:12px;border-radius:8px;background:linear-gradient(90deg, rgba(255,255,255,0.02), transparent);border:1px solid var(--glass-border)}

    footer{margin-top:16px;text-align:center;color:var(--muted);font-size:12px}

    /* link styles */
    a.link{color:inherit;text-decoration:none;display:inline-flex;align-items:center;gap:8px}
    a.link:hover{text-decoration:underline}

    /* small responsive niceties */
    @media(max-width:520px){
      .avatar{width:64px;height:64px}
      .title h1{font-size:18px}
      .greeting{font-size:16px}
    }
  </style>
</head>
<body data-theme="dark">
  <!--
    Usage:
    - Save as index.html and host on GitHub Pages (repo: <username>.github.io).
    - Replace githubUser constant in the script if you rename user.
    - For advanced GitHub data (contribution calendar/streak) you can provide a GitHub token, but this file uses public endpoints + the readme-stats images for streak and summary.
  -->

  <main class="container">
    <section class="card">
      <header>
        <div class="profile">
          <div class="avatar" id="avatar">YA</div>
          <div class="title">
            <div class="greeting">
              <div id="typed">Hi, I'm Yousef alshwawra</div>
              <div class="cursor" aria-hidden="true"></div>
            </div>
            <p>Software Engineer • Backend & Frontend • Fullstack Student</p>
            <div style="margin-top:8px" class="muted">I build RESTful APIs, web apps and enjoy learning new stacks.</div>
          </div>
        </div>

        <div class="actions">
          <button id="themeToggle" class="btn ghost" title="Toggle theme">Toggle Theme</button>
          <a class="btn accent" href="https://github.com/Youssef-Alshwawra" target="_blank" rel="noreferrer">
            <img class="icon" src="https://cdn.simpleicons.org/github" alt="" /> View GitHub
          </a>
        </div>
      </header>

      <div class="grid">
        <div>
          <div class="section-title">
            <h3 style="margin:0">Contact & Social</h3>
            <div class="muted">Connect with me</div>
          </div>

          <div class="chips" role="list">
            <a class="chip link" href="mailto:yousef.alshwawra@gmail.com" role="listitem">
              <img src="https://cdn.simpleicons.org/mail" alt="email icon" /> <span>yousef.alshwawra@gmail.com</span>
            </a>

            <a class="chip link" href="https://github.com/Youssef-Alshwawra" target="_blank" rel="noreferrer" role="listitem">
              <img src="https://cdn.simpleicons.org/github" alt="github" /> <span>@Youssef-Alshwawra</span>
            </a>

            <a class="chip link" href="https://www.linkedin.com/in/yousef-alshwawra/" target="_blank" rel="noreferrer" role="listitem">
              <img src="https://cdn.simpleicons.org/linkedin" alt="linkedin" /> <span>LinkedIn</span>
            </a>

            <a class="chip link" href="https://www.instagram.com/leq1nd_youssef/" target="_blank" rel="noreferrer" role="listitem">
              <img src="https://cdn.simpleicons.org/instagram" alt="instagram" /> <span>Instagram</span>
            </a>
          </div>

          <div class="section-title" style="margin-top:16px">
            <h3 style="margin:0">Tech Stack</h3>
            <div class="muted">Backend • Frontend • Tools • Databases</div>
          </div>

          <div style="display:flex;gap:10px;flex-wrap:wrap;">
            <!-- Backend -->
            <div style="min-width:200px;flex:1" aria-labelledby="backendTitle">
              <div id="backendTitle" class="muted" style="font-weight:600;margin-bottom:6px">Backend</div>
              <div class="chips">
                <div class="chip"><img src="https://cdn.simpleicons.org/node.js" alt="node" /> node.js</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/express" alt="express" /> express.js</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/mongodb" alt="mongoose" /> mongoose</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/drizzle-orm" alt="drizzle" /> drizzle</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/sequelize" alt="sequelize" /> sequelize</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/dotnet" alt="dotnet" /> .NET 8</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/rest" alt="api" /> REST APIs</div>
              </div>
            </div>

            <!-- Frontend -->
            <div style="min-width:200px;flex:1" aria-labelledby="frontendTitle">
              <div id="frontendTitle" class="muted" style="font-weight:600;margin-bottom:6px">Frontend</div>
              <div class="chips">
                <div class="chip"><img src="https://cdn.simpleicons.org/react" alt="react" /> React</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/html5" alt="html" /> HTML</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/css3" alt="css" /> CSS</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/tailwindcss" alt="tailwind" /> TailwindCSS</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/bootstrap" alt="bootstrap" /> Bootstrap</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/next.js" alt="next" /> Next.js</div>
              </div>
            </div>
          </div>

          <!-- Tools & DB -->
          <div style="display:flex;gap:10px;flex-wrap:wrap;margin-top:12px">
            <div style="min-width:200px;flex:1">
              <div class="muted" style="font-weight:600;margin-bottom:6px">Tools & Platforms</div>
              <div class="chips">
                <div class="chip"><img src="https://cdn.simpleicons.org/visualstudiocode" alt="vscode" /> VSCode</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/cursor" alt="cursor" /> Cursor</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/docker" alt="docker" /> Docker</div>
              </div>
            </div>

            <div style="min-width:200px;flex:1">
              <div class="muted" style="font-weight:600;margin-bottom:6px">Databases</div>
              <div class="chips">
                <div class="chip"><img src="https://cdn.simpleicons.org/postgresql" alt="postgres" /> PostgreSQL</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/mongodb" alt="mongodb" /> MongoDB</div>
                <div class="chip"><img src="https://cdn.simpleicons.org/mysql" alt="mysql" /> MySQL</div>
              </div>
            </div>
          </div>

          <!-- Quote & Stats -->
          <div style="margin-top:14px" class="grid cols-2">
            <div class="card" style="padding:12px">
              <div class="section-title">
                <h4 style="margin:0">Developer Quote</h4>
                <button id="newQuoteBtn" class="btn ghost" aria-label="New Quote">New Quote</button>
              </div>
              <div id="quote" class="quote">Loading quote...</div>
            </div>

            <div class="card" style="padding:12px">
              <div class="section-title">
                <h4 style="margin:0">GitHub Snapshot</h4>
                <div class="muted">Live</div>
              </div>
              <div id="statsWrap" style="margin-top:6px">
                <div class="stats">
                  <div class="stat">
                    <div class="num" id="reposNum">—</div>
                    <div class="lbl">Public Repos</div>
                  </div>
                  <div class="stat">
                    <div class="num" id="followersNum">—</div>
                    <div class="lbl">Followers</div>
                  </div>
                  <div class="stat">
                    <div class="num" id="followingNum">—</div>
                    <div class="lbl">Following</div>
                  </div>
                </div>

                <div style="margin-top:10px; display:flex; gap:8px; align-items:center;">
                  <!-- GitHub readme-stats badges (image service) -->
                  <img alt="GitHub Stats" src="https://github-readme-stats.vercel.app/api?username=Youssef-Alshwawra&show_icons=true&hide_title=true" style="width:100%;border-radius:8px;border:1px solid var(--glass-border)" />
                </div>

                <div style="margin-top:8px">
                  <img alt="Streak" src="https://github-readme-streak-stats.herokuapp.com/?user=Youssef-Alshwawra" style="width:100%;border-radius:8px;border:1px solid var(--glass-border)" />
                </div>
              </div>
            </div>
          </div>

        </div>

        <!-- Right column (sidebar) -->
        <aside>
          <div class="card">
            <div class="section-title">
              <h3 style="margin:0">Top Languages</h3>
              <div class="muted">From public repos</div>
            </div>
            <div id="langs" style="margin-top:8px" class="lang-list">
              <div class="muted">Loading languages...</div>
            </div>
          </div>

          <div class="card" style="margin-top:12px">
            <div class="section-title">
              <h3 style="margin:0">Quick Links</h3>
              <div class="muted">Shortcuts</div>
            </div>
            <div style="display:flex;flex-direction:column;gap:8px;margin-top:10px">
              <a class="btn ghost link" href="https://github.com/Youssef-Alshwawra" target="_blank" rel="noreferrer">
                <img class="icon" src="https://cdn.simpleicons.org/github" alt=""> GitHub
              </a>
              <a class="btn ghost link" href="mailto:yousef.alshwawra@gmail.com">
                <img class="icon" src="https://cdn.simpleicons.org/mail" alt=""> Email
              </a>
              <a class="btn ghost link" href="https://www.linkedin.com/in/yousef-alshwawra/" target="_blank" rel="noreferrer">
                <img class="icon" src="https://cdn.simpleicons.org/linkedin" alt=""> LinkedIn
              </a>
            </div>
          </div>

          <div class="card" style="margin-top:12px">
            <div class="section-title">
              <h3 style="margin:0">Extras</h3>
              <div class="muted">Small features</div>
            </div>

            <div style="margin-top:10px;display:flex;flex-direction:column;gap:8px">
              <div class="muted" style="font-size:13px">Typing animation — enabled</div>
              <div class="muted" style="font-size:13px">Theme — toggleable</div>
              <div class="muted" style="font-size:13px">Badges — live images</div>
            </div>
          </div>
        </aside>
      </div>

      <footer>
        <div class="muted">Made with ❤️ • Built for GitHub Pages • Customize: edit the HTML file</div>
      </footer>
    </section>
  </main>

  <script>
    // --- Config & user info (edit here if needed) ---
    const githubUser = 'Youssef-Alshwawra';
    const displayName = "Yousef alshwawra";
    const email = "yousef.alshwawra@gmail.com";
    const avatarEl = document.getElementById('avatar');

    // Typing effect
    (function typing(){
      const el = document.getElementById('typed');
      const text = `Hi, I'm ${displayName}`;
      el.textContent = '';
      let i = 0;
      const speed = 60;
      function step(){
        if(i <= text.length){
          el.textContent = text.slice(0, i);
          i++;
          setTimeout(step, speed);
        } else {
          // stop after full typed
        }
      }
      step();
    })();

    // Theme toggle
    (function themeInit(){
      const root = document.documentElement;
      const saved = localStorage.getItem('theme');
      const prefersDark = window.matchMedia && window.matchMedia('(prefers-color-scheme:dark)').matches;
      const initDark = saved ? saved === 'dark' : prefersDark;
      document.body.setAttribute('data-theme', initDark ? 'dark' : 'light');
      document.getElementById('themeToggle').addEventListener('click', () => {
        const cur = document.body.getAttribute('data-theme') || 'dark';
        const next = cur === 'dark' ? 'light' : 'dark';
        document.body.setAttribute('data-theme', next);
        localStorage.setItem('theme', next);
      });
    })();

    // Developer quotes
    const QUOTES = [
      "Programs must be written for people to read, and only incidentally for machines to execute. — Harold Abelson",
      "First, solve the problem. Then, write the code. — John Johnson",
      "Simplicity is the soul of efficiency. — Austin Freeman",
      "Any fool can write code that a computer can understand. Good programmers write code that humans can understand. — Martin Fowler",
      "Code is like humor. When you have to explain it, it’s bad. — Cory House"
    ];
    function setRandomQuote(){
      const q = QUOTES[Math.floor(Math.random()*QUOTES.length)];
      document.getElementById('quote').textContent = q;
    }
    document.getElementById('newQuoteBtn').addEventListener('click', setRandomQuote);
    setRandomQuote();

    // Fetch GitHub stats (public endpoints)
    async function fetchGitHubSnapshot(){
      try {
        const uRes = await fetch(`https://api.github.com/users/${githubUser}`);
        if(!uRes.ok) throw new Error('GitHub API rate limit or user not found');
        const u = await uRes.json();
        document.getElementById('reposNum').textContent = u.public_repos ?? '-';
        document.getElementById('followersNum').textContent = u.followers ?? '-';
        document.getElementById('followingNum').textContent = u.following ?? '-';
        // avatar update
        if(u.avatar_url){
          avatarEl.style.background = `url(${u.avatar_url}) center/cover`;
        } else {
          avatarEl.textContent = displayName.split(' ').map(n=>n[0]).slice(0,2).join('').toUpperCase();
        }
      } catch(err){
        console.error('GitHub snapshot error', err);
      }
    }

    // Aggregate top languages using user's public repos (primary language approximation)
    async function fetchTopLanguages(){
      try {
        // fetch first 100 repos
        const reposRes = await fetch(`https://api.github.com/users/${githubUser}/repos?per_page=100&type=owner&sort=updated`);
        if(!reposRes.ok) throw new Error('Could not fetch repos (rate limit?)');
        const repos = await reposRes.json();
        // aggregate primary 'language' field
        const map = {};
        repos.forEach(r => {
          if(r.language){
            map[r.language] = (map[r.language] || 0) + 1;
          }
        });
        // sort & render top 6
        const entries = Object.entries(map).sort((a,b)=>b[1]-a[1]).slice(0,6);
        const total = entries.reduce((s,e)=>s+e[1],0) || 1;
        const container = document.getElementById('langs');
        container.innerHTML = '';
        if(entries.length===0){
          container.innerHTML = '<div class="muted">No language data (empty or private repos)</div>';
          return;
        }
        entries.forEach(([lang,count])=>{
          const percent = Math.round((count/total)*100);
          const item = document.createElement('div');
          item.className='lang-item';
          item.innerHTML = `
            <div class="lang-name">${lang}</div>
            <div class="bar-wrap"><div class="bar-fill" style="width:${percent}%;"></div></div>
            <div style="width:36px;text-align:right;color:var(--muted);font-size:13px">${percent}%</div>
          `;
          container.appendChild(item);
        });
      } catch(err){
        console.error('Languages error', err);
        document.getElementById('langs').innerHTML = '<div class="muted">Unable to load languages (rate-limited?)</div>';
      }
    }

    // initialize
    fetchGitHubSnapshot();
    fetchTopLanguages();

    // Accessibility: allow keyboard on theme toggle
    document.getElementById('themeToggle').addEventListener('keydown', (e) => {
      if(e.key === 'Enter' || e.key === ' ') { e.preventDefault(); document.getElementById('themeToggle').click(); }
    });
  </script>
</body>
</html>
