<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="theme-color" content="#f7f6f2" />
    <title>Daywell — make space for your day</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <div class="app-shell">
      <aside class="sidebar">
        <a class="brand" href="#" aria-label="Daywell home">
          <span class="brand-mark" aria-hidden="true">
            <svg viewBox="0 0 32 32" fill="none"><path d="M16 4v4M16 24v4M4 16h4M24 16h4M7.5 7.5l2.8 2.8m11.4 11.4 2.8 2.8m0-17-2.8 2.8m-11.4 11.4-2.8 2.8" stroke="currentColor" stroke-width="2.2" stroke-linecap="round"/><circle cx="16" cy="16" r="6" stroke="currentColor" stroke-width="2.2"/></svg>
          </span>
          <span>daywell<span class="brand-period">.</span></span>
        </a>

        <div class="sidebar-label">YOUR SPACE</div>
        <nav class="main-nav" aria-label="Main navigation">
          <button class="nav-link active" data-page="today">
            <span class="nav-icon"><svg viewBox="0 0 24 24"><rect x="3.5" y="5" width="17" height="16" rx="2.5"/><path d="M8 3v4m8-4v4M3.5 10h17"/></svg></span>
            <span>Today</span><span class="nav-current" aria-hidden="true"></span>
          </button>
          <button class="nav-link" data-page="week">
            <span class="nav-icon"><svg viewBox="0 0 24 24"><rect x="3.5" y="5" width="17" height="16" rx="2.5"/><path d="M8 3v4m8-4v4M3.5 10h17M8 14h.01M12 14h.01M16 14h.01M8 17h.01M12 17h.01"/></svg></span>
            <span>My week</span>
          </button>
          <button class="nav-link" data-page="habits">
            <span class="nav-icon"><svg viewBox="0 0 24 24"><path d="m5 12.5 4.2 4.2L19.5 6.5"/></svg></span>
            <span>Habits</span>
          </button>
          <button class="nav-link" data-page="reports">
            <span class="nav-icon"><svg viewBox="0 0 24 24"><path d="M4 19.5h16M6.5 16V11m5 5V5m5 11V8"/></svg></span>
            <span>Reports</span>
          </button>
        </nav>

        <div class="sidebar-bottom">
          <div class="sidebar-quote">
            <span class="quote-sparkle">✳</span>
            <p>Small steps, taken often, make a life.</p>
            <span class="quote-byline">A LITTLE REMINDER</span>
          </div>
          <div class="profile">
            <div class="avatar">Y</div>
            <div class="profile-copy"><strong>Your space</strong><span>Just for you</span></div>
            <span class="profile-dots">···</span>
          </div>
        </div>
      </aside>

      <main class="main-content">
        <header class="topbar">
          <div class="breadcrumb"><span>YOUR SPACE</span><span class="breadcrumb-slash">/</span><strong id="breadcrumb-current">TODAY</strong></div>
          <div class="topbar-right"><span class="today-indicator"><span></span> A fresh start, every day</span><button class="icon-button" id="today-shortcut" aria-label="Go to today"><svg viewBox="0 0 24 24"><path d="M12 8v4l2.5 1.5M20 12a8 8 0 1 1-2.34-5.66M20 4v5h-5"/></svg></button></div>
        </header>

        <section class="page active" id="page-today" aria-labelledby="today-title"></section>
        <section class="page" id="page-week" aria-labelledby="week-title"></section>
        <section class="page" id="page-habits" aria-labelledby="habits-title"></section>
        <section class="page" id="page-reports" aria-labelledby="reports-title"></section>
      </main>
    </div>

    <dialog id="editor-dialog" class="editor-dialog">
      <form id="editor-form">
        <div class="dialog-top">
          <span class="dialog-kicker" id="dialog-kicker">YOUR ROUTINE</span>
          <button type="button" class="icon-button dialog-close" aria-label="Close dialog">×</button>
        </div>
        <h2 id="dialog-title">Add to your day</h2>
        <p class="dialog-description" id="dialog-description">Make a little room for what matters.</p>
        <div id="editor-fields"></div>
        <div class="dialog-actions"><button type="button" class="button button-delete" id="dialog-delete" hidden>Delete</button><button type="button" class="button button-quiet" id="dialog-cancel">Cancel</button><button class="button button-primary" id="dialog-save">Save</button></div>
      </form>
    </dialog>

    <div class="toast" id="toast" role="status" aria-live="polite"></div>
    <script src="app.js"></script>
  </body>
</html>
