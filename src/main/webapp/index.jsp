<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>NexusShop · re:imagine</title>

<link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=Archivo+Black&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

<style>
  * { margin: 0; padding: 0; box-sizing: border-box; }

  :root {
    --ink: #0b0b0b;
    --ink-soft: #4a4a4a;
    --paper: #fff9f2;
    --surface: #ffffff;
    --highlight: #ffd966;
    --accent: #fc4a1a;
    --accent-dark: #d63a10;
    --accent2: #3f2e56;
    --mint: #b7e4c7;
    --border: #e8e2d9;
    --radius: 14px;
    --radius-sm: 10px;
    --shadow-sm: 0 1px 3px rgba(0,0,0,.06);
    --shadow-md: 0 8px 24px rgba(0,0,0,.08);
    --shadow-lg: 0 20px 48px rgba(0,0,0,.12);
    --max: 1200px;
  }

  html { scroll-behavior: smooth; }

  body {
    font-family: 'Space Grotesk', system-ui, -apple-system, sans-serif;
    background: var(--paper);
    color: var(--ink);
    line-height: 1.55;
    -webkit-font-smoothing: antialiased;
  }

  img { max-width: 100%; display: block; }
  a { color: inherit; text-decoration: none; }
  button { font-family: inherit; cursor: pointer; border: none; background: none; }

  .container {
    width: 100%;
    max-width: var(--max);
    margin: 0 auto;
    padding: 0 24px;
  }

  /* ---------- Skip link (a11y) ---------- */
  .skip {
    position: absolute;
    left: -9999px;
    top: 0;
    background: var(--ink);
    color: #fff;
    padding: 12px 20px;
    border-radius: 0 0 var(--radius-sm) 0;
    z-index: 999;
  }
  .skip:focus { left: 0; }

  /* ---------- Header ---------- */
  header {
    position: sticky;
    top: 0;
    z-index: 50;
    background: rgba(255, 249, 242, .85);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    border-bottom: 1px solid var(--border);
  }

  .nav {
    display: flex;
    align-items: center;
    gap: 32px;
    height: 72px;
  }

  .logo {
    font-family: 'Archivo Black', sans-serif;
    font-size: 1.35rem;
    letter-spacing: -.5px;
    display: flex;
    align-items: center;
    gap: 8px;
  }
  .logo .dot {
    width: 10px; height: 10px;
    background: var(--accent);
    border-radius: 50%;
    display: inline-block;
  }

  .nav-links {
    display: flex;
    gap: 28px;
    list-style: none;
    margin-left: 8px;
  }
  .nav-links a {
    font-weight: 500;
    color: var(--ink-soft);
    transition: color .2s;
    position: relative;
    padding: 6px 0;
  }
  .nav-links a:hover,
  .nav-links a.active { color: var(--ink); }
  .nav-links a.active::after {
    content: '';
    position: absolute;
    bottom: 0; left: 0; right: 0;
    height: 2px;
    background: var(--accent);
    border-radius: 2px;
  }

  .search {
    flex: 1;
    max-width: 380px;
    position: relative;
  }
  .search input {
    width: 100%;
    padding: 11px 16px 11px 42px;
    border: 1px solid var(--border);
    border-radius: 999px;
    background: var(--surface);
    font-family: inherit;
    font-size: .93rem;
    color: var(--ink);
    outline: none;
    transition: border-color .2s, box-shadow .2s;
  }
  .search input:focus {
    border-color: var(--accent);
    box-shadow: 0 0 0 4px rgba(252, 74, 26, .12);
  }
  .search i {
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    color: var(--ink-soft);
    font-size: .9rem;
    pointer-events: none;
  }

  .nav-actions {
    display: flex;
    align-items: center;
    gap: 8px;
    margin-left: auto;
  }

  .icon-btn {
    width: 42px; height: 42px;
    display: grid;
    place-items: center;
    border-radius: 50%;
    color: var(--ink);
    font-size: 1rem;
    transition: background .2s, color .2s;
    position: relative;
  }
  .icon-btn:hover { background: rgba(11,11,11,.06); }

  .cart-badge {
    position: absolute;
    top: 4px; right: 4px;
    min-width: 18px; height: 18px;
    background: var(--accent);
    color: #fff;
    font-size: .68rem;
    font-weight: 700;
    border-radius: 999px;
    display: grid;
    place-items: center;
    padding: 0 4px;
  }

  .menu-toggle { display: none; }

  /* ---------- Hero ---------- */
  .hero {
    padding: 72px 0 56px;
    display: grid;
    grid-template-columns: 1.1fr 1fr;
    gap: 64px;
    align-items: center;
  }

  .eyebrow {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: var(--highlight);
    color: var(--ink);
    font-size: .8rem;
    font-weight: 600;
    letter-spacing: .5px;
    text-transform: uppercase;
    padding: 7px 14px;
    border-radius: 999px;
    margin-bottom: 22px;
  }

  .hero h1 {
    font-family: 'Archivo Black', sans-serif;
    font-size: clamp(2.4rem, 5vw, 4rem);
    line-height: 1.05;
    letter-spacing: -1.5px;
    margin-bottom: 20px;
  }
  .hero h1 .accent { color: var(--accent); }

  .hero p {
    font-size: 1.08rem;
    color: var(--ink-soft);
    max-width: 520px;
    margin-bottom: 32px;
  }

  .hero-cta {
    display: flex;
    gap: 14px;
    flex-wrap: wrap;
    margin-bottom: 40px;
  }

  .btn {
    display: inline-flex;
    align-items: center;
    gap: 10px;
    padding: 14px 26px;
    border-radius: 999px;
    font-weight: 600;
    font-size: .97rem;
    transition: transform .15s, background .2s, box-shadow .2s;
    white-space: nowrap;
  }
  .btn:active { transform: translateY(1px); }

  .btn-primary {
    background: var(--accent);
    color: #fff;
    box-shadow: 0 8px 20px rgba(252,74,26,.28);
  }
  .btn-primary:hover {
    background: var(--accent-dark);
    box-shadow: 0 10px 26px rgba(252,74,26,.36);
  }

  .btn-ghost {
    background: var(--surface);
    color: var(--ink);
    border: 1px solid var(--border);
  }
  .btn-ghost:hover { border-color: var(--ink); }

  .stats {
    display: flex;
    gap: 40px;
    padding-top: 28px;
    border-top: 1px solid var(--border);
  }
  .stat strong {
    display: block;
    font-family: 'Archivo Black', sans-serif;
    font-size: 1.6rem;
    letter-spacing: -.5px;
  }
  .stat span {
    font-size: .85rem;
    color: var(--ink-soft);
  }

  .hero-visual {
    position: relative;
    aspect-ratio: 1 / 1;
    border-radius: 24px;
    background: linear-gradient(135deg, var(--mint), var(--highlight));
    display: grid;
    place-items: center;
    overflow: hidden;
    box-shadow: var(--shadow-lg);
  }
  .hero-visual .big-text {
    font-family: 'Archivo Black', sans-serif;
    font-size: clamp(3rem, 8vw, 6rem);
    color: var(--accent2);
    text-align: center;
    line-height: .95;
    letter-spacing: -3px;
    padding: 24px;
  }
  .hero-visual .tag {
    position: absolute;
    background: var(--surface);
    padding: 10px 16px;
    border-radius: 999px;
    font-size: .82rem;
    font-weight: 600;
    box-shadow: var(--shadow-md);
    display: flex;
    align-items: center;
    gap: 8px;
  }
  .tag.t1 { top: 28px; left: 28px; }
  .tag.t2 { bottom: 28px; right: 28px; }
  .tag i { color: var(--accent); }

  /* ---------- Section heading ---------- */
  .section {
    padding: 56px 0;
  }
  .section-head {
    display: flex;
    align-items: flex-end;
    justify-content: space-between;
    gap: 24px;
    margin-bottom: 32px;
    flex-wrap: wrap;
  }
  .section-head h2 {
    font-family: 'Archivo Black', sans-serif;
    font-size: clamp(1.6rem, 3vw, 2.2rem);
    letter-spacing: -1px;
  }
  .section-head p {
    color: var(--ink-soft);
    font-size: .97rem;
    margin-top: 6px;
  }

  /* ---------- Filters ---------- */
  .filters {
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
    margin-bottom: 28px;
  }
  .chip {
    padding: 9px 18px;
    border-radius: 999px;
    background: var(--surface);
    border: 1px solid var(--border);
    font-size: .88rem;
    font-weight: 500;
    color: var(--ink-soft);
    transition: all .2s;
  }
  .chip:hover { border-color: var(--ink); color: var(--ink); }
  .chip.active {
    background: var(--ink);
    color: #fff;
    border-color: var(--ink);
  }

  /* ---------- Product grid ---------- */
  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
    gap: 24px;
  }

  .card {
    background: var(--surface);
    border: 1px solid var(--border);
    border-radius: var(--radius);
    overflow: hidden;
    transition: transform .25s ease, box-shadow .25s ease, border-color .25s;
    display: flex;
    flex-direction: column;
  }
  .card:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-md);
    border-color: transparent;
  }

  .card-media {
    position: relative;
    aspect-ratio: 4 / 3;
    display: grid;
    place-items: center;
    font-size: 3rem;
    color: rgba(11,11,11,.35);
    overflow: hidden;
  }
  .card-media.m1 { background: linear-gradient(135deg, #ffe0b2, #ffcc80); }
  .card-media.m2 { background: linear-gradient(135deg, #b7e4c7, #95d5b2); }
  .card-media.m3 { background: linear-gradient(135deg, #d0bfff, #b197fc); }
  .card-media.m4 { background: linear-gradient(135deg, #ffd6a5, #ffb4a2); }
  .card-media.m5 { background: linear-gradient(135deg, #a5d8ff, #74c0fc); }
  .card-media.m6 { background: linear-gradient(135deg, #ffc9de, #ffa8c5); }

  .badge {
    position: absolute;
    top: 12px; left: 12px;
    background: var(--accent);
    color: #fff;
    font-size: .7rem;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: .5px;
    padding: 5px 10px;
    border-radius: 999px;
  }
  .badge.new { background: var(--accent2); }

  .wish {
    position: absolute;
    top: 10px; right: 10px;
    width: 36px; height: 36px;
    border-radius: 50%;
    background: rgba(255,255,255,.9);
    display: grid;
    place-items: center;
    color: var(--ink-soft);
    font-size: .9rem;
    transition: color .2s, transform .2s;
  }
  .wish:hover { color: var(--accent); transform: scale(1.1); }

  .card-body {
    padding: 18px;
    display: flex;
    flex-direction: column;
    gap: 8px;
    flex: 1;
  }

  .cat {
    font-size: .72rem;
    text-transform: uppercase;
    letter-spacing: .8px;
    color: var(--ink-soft);
    font-weight: 600;
  }

  .card-title {
    font-size: 1.02rem;
    font-weight: 600;
    line-height: 1.3;
  }

  .rating {
    display: flex;
    align-items: center;
    gap: 6px;
    font-size: .82rem;
    color: var(--ink-soft);
  }
  .rating .stars { color: #f5a623; letter-spacing: 1px; }

  .price-row {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-top: auto;
    padding-top: 12px;
  }
  .price {
    font-family: 'Archivo Black', sans-serif;
    font-size: 1.15rem;
  }
  .price .old {
    font-family: 'Space Grotesk', sans-serif;
    font-size: .85rem;
    color: var(--ink-soft);
    text-decoration: line-through;
    margin-left: 6px;
    font-weight: 500;
  }

  .add-btn {
    width: 40px; height: 40px;
    border-radius: 50%;
    background: var(--ink);
    color: #fff;
    display: grid;
    place-items: center;
    font-size: .95rem;
    transition: background .2s, transform .2s;
  }
  .add-btn:hover {
    background: var(--accent);
    transform: rotate(90deg);
  }

  /* ---------- Newsletter ---------- */
  .newsletter {
    background: var(--accent2);
    color: #fff;
    border-radius: 24px;
    padding: 48px;
    display: grid;
    grid-template-columns: 1fr auto;
    gap: 32px;
    align-items: center;
    margin: 56px 0;
  }
  .newsletter h3 {
    font-family: 'Archivo Black', sans-serif;
    font-size: clamp(1.5rem, 3vw, 2rem);
    letter-spacing: -.8px;
    margin-bottom: 8px;
  }
  .newsletter p { opacity: .8; }

  .newsletter form {
    display: flex;
    gap: 10px;
    background: rgba(255,255,255,.1);
    padding: 6px;
    border-radius: 999px;
  }
  .newsletter input {
    background: transparent;
    border: none;
    padding: 12px 18px;
    color: #fff;
    font-family: inherit;
    font-size: .95rem;
    outline: none;
    min-width: 240px;
  }
  .newsletter input::placeholder { color: rgba(255,255,255,.6); }
  .newsletter button {
    background: var(--highlight);
    color: var(--ink);
    padding: 12px 22px;
    border-radius: 999px;
    font-weight: 600;
    transition: background .2s;
  }
  .newsletter button:hover { background: #ffcf3d; }

  /* ---------- Footer ---------- */
  footer {
    border-top: 1px solid var(--border);
    padding: 48px 0 32px;
    color: var(--ink-soft);
    font-size: .9rem;
  }
  .foot-grid {
    display: grid;
    grid-template-columns: 1.5fr 1fr 1fr 1fr;
    gap: 40px;
    margin-bottom: 40px;
  }
  .foot-grid h4 {
    color: var(--ink);
    font-size: .95rem;
    margin-bottom: 14px;
    font-weight: 700;
  }
  .foot-grid ul { list-style: none; display: flex; flex-direction: column; gap: 10px; }
  .foot-grid a:hover { color: var(--ink); }

  .socials { display: flex; gap: 10px; margin-top: 16px; }
  .socials a {
    width: 38px; height: 38px;
    border-radius: 50%;
    background: var(--surface);
    border: 1px solid var(--border);
    display: grid;
    place-items: center;
    transition: all .2s;
  }
  .socials a:hover {
    background: var(--ink);
    color: #fff;
    border-color: var(--ink);
  }

  .foot-bottom {
    padding-top: 24px;
    border-top: 1px solid var(--border);
    display: flex;
    justify-content: space-between;
    gap: 16px;
    flex-wrap: wrap;
    font-size: .85rem;
  }

  /* ---------- Responsive ---------- */
  @media (max-width: 960px) {
    .hero { grid-template-columns: 1fr; gap: 40px; padding: 48px 0 32px; }
    .hero-visual { max-width: 460px; margin: 0 auto; width: 100%; }
    .newsletter { grid-template-columns: 1fr; padding: 36px; }
    .foot-grid { grid-template-columns: 1fr 1fr; }
  }

  @media (max-width: 720px) {
    .nav-links, .search { display: none; }
    .menu-toggle { display: grid; }
    .nav { height: 64px; gap: 12px; }
    .stats { gap: 24px; flex-wrap: wrap; }
    .newsletter form { flex-direction: column; border-radius: var(--radius); }
    .newsletter input { min-width: 0; width: 100%; }
    .newsletter button { width: 100%; }
  }

  @media (max-width: 520px) {
    .container { padding: 0 18px; }
    .grid { grid-template-columns: 1fr 1fr; gap: 14px; }
    .card-body { padding: 14px; }
    .card-title { font-size: .92rem; }
    .price { font-size: 1rem; }
    .foot-grid { grid-template-columns: 1fr; }
    .section { padding: 40px 0; }
  }
</style>
</head>
<body>

<a href="#main" class="skip">Skip to content</a>

<!-- ============ HEADER ============ -->
<header>
  <div class="container">
    <nav class="nav" aria-label="Main">
      <a href="#" class="logo">Nexus<span class="dot"></span>Shop</a>

      <ul class="nav-links">
        <li><a href="#" class="active">Shop</a></li>
        <li><a href="#">New in</a></li>
        <li><a href="#">Collections</a></li>
        <li><a href="#">Sale</a></li>
      </ul>

      <div class="search" role="search">
        <i class="fas fa-magnifying-glass" aria-hidden="true"></i>
        <input type="search" placeholder="Search products…" aria-label="Search products" />
      </div>

      <div class="nav-actions">
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <button class="icon-btn" aria-label="Cart">
          <i class="fas fa-bag-shopping"></i>
          <span class="cart-badge">3</span>
        </button>
        <button class="icon-btn menu-toggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      </div>
    </nav>
  </div>
</header>

<!-- ============ MAIN ============ -->
<main id="main">

  <!-- Hero -->
  <section class="container hero">
    <div>
      <span class="eyebrow"><i class="fas fa-bolt"></i> New season drop</span>
      <h1>Shop smarter.<br /><span class="accent">Live better.</span></h1>
      <p>Curated essentials for modern living — thoughtfully designed, fairly priced, and delivered fast. Discover the pieces you'll actually keep.</p>

      <div class="hero-cta">
        <a href="#shop" class="btn btn-primary">
          Explore collection <i class="fas fa-arrow-right"></i>
        </a>
        <a href="#" class="btn btn-ghost">
          <i class="far fa-play-circle"></i> Watch story
        </a>
      </div>

      <div class="stats">
        <div class="stat"><strong>12k+</strong><span>Happy customers</span></div>
        <div class="stat"><strong>4.9★</strong><span>Average rating</span></div>
        <div class="stat"><strong>48h</strong><span>Fast delivery</span></div>
      </div>
    </div>

    <div class="hero-visual" aria-hidden="true">
      <div class="big-text">re:<br />imagine</div>
      <span class="tag t1"><i class="fas fa-leaf"></i> Sustainable</span>
      <span class="tag t2"><i class="fas fa-truck-fast"></i> Free shipping</span>
    </div>
  </section>

  <!-- Products -->
  <section class="container section" id="shop">
    <div class="section-head">
      <div>
        <h2>Featured products</h2>
        <p>Hand-picked favourites from this week's collection.</p>
      </div>
      <a href="#" class="btn btn-ghost">View all <i class="fas fa-arrow-right"></i></a>
    </div>

    <div class="filters" role="tablist" aria-label="Product filters">
      <button class="chip active">All</button>
      <button class="chip">Home</button>
      <button class="chip">Tech</button>
      <button class="chip">Apparel</button>
      <button class="chip">Accessories</button>
    </div>

    <div class="grid">
      <!-- Card 1 -->
      <article class="card">
        <div class="card-media m1">
          <span class="badge">-20%</span>
          <button class="wish" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
          <i class="fas fa-couch"></i>
        </div>
        <div class="card-body">
          <span class="cat">Home</span>
          <h3 class="card-title">Linen Lounge Chair</h3>
          <div class="rating"><span class="stars">★★★★★</span> 4.9 (128)</div>
          <div class="price-row">
            <div class="price">$189<span class="old">$236</span></div>
            <button class="add-btn" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </article>

      <!-- Card 2 -->
      <article class="card">
        <div class="card-media m2">
          <span class="badge new">New</span>
          <button class="wish" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
          <i class="fas fa-headphones"></i>
        </div>
        <div class="card-body">
          <span class="cat">Tech</span>
          <h3 class="card-title">Studio Wireless Pro</h3>
          <div class="rating"><span class="stars">★★★★★</span> 4.8 (94)</div>
          <div class="price-row">
            <div class="price">$249</div>
            <button class="add-btn" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </article>

      <!-- Card 3 -->
      <article class="card">
        <div class="card-media m3">
          <button class="wish" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
          <i class="fas fa-mug-hot"></i>
        </div>
        <div class="card-body">
          <span class="cat">Home</span>
          <h3 class="card-title">Ceramic Pour-Over Set</h3>
          <div class="rating"><span class="stars">★★★★☆</span> 4.6 (67)</div>
          <div class="price-row">
            <div class="price">$54</div>
            <button class="add-btn" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </article>

      <!-- Card 4 -->
      <article class="card">
        <div class="card-media m4">
          <span class="badge">-15%</span>
          <button class="wish" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
          <i class="fas fa-shoe-prints"></i>
        </div>
        <div class="card-body">
          <span class="cat">Apparel</span>
          <h3 class="card-title">Everyday Runner</h3>
          <div class="rating"><span class="stars">★★★★★</span> 4.7 (211)</div>
          <div class="price-row">
            <div class="price">$119<span class="old">$140</span></div>
            <button class="add-btn" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </article>

      <!-- Card 5 -->
      <article class="card">
        <div class="card-media m5">
          <button class="wish" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
          <i class="fas fa-watch"></i>
        </div>
        <div class="card-body">
          <span class="cat">Accessories</span>
          <h3 class="card-title">Minimal Field Watch</h3>
          <div class="rating"><span class="stars">★★★★☆</span> 4.5 (58)</div>
          <div class="price-row">
            <div class="price">$165</div>
            <button class="add-btn" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </article>

      <!-- Card 6 -->
      <article class="card">
        <div class="card-media m6">
          <span class="badge new">New</span>
          <button class="wish" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
          <i class="fas fa-camera-retro"></i>
        </div>
        <div class="card-body">
          <span class="cat">Tech</span>
          <h3 class="card-title">Instant Film Camera</h3>
          <div class="rating"><span class="stars">★★★★★</span> 4.9 (73)</div>
          <div class="price-row">
            <div class="price">$139</div>
            <button class="add-btn" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
          </div>
        </div>
      </article>
    </div>
  </section>

  <!-- Newsletter -->
  <section class="container">
    <div class="newsletter">
      <div>
        <h3>Join the Nexus list</h3>
        <p>Early access to drops, exclusive offers, and 10% off your first order.</p>
      </div>
      <form onsubmit="event.preventDefault(); this.reset(); alert('Thanks for subscribing!');">
        <input type="email" placeholder="you@example.com" required aria-label="Email address" />
        <button type="submit">Subscribe</button>
      </form>
    </div>
  </section>

</main>

<!-- ============ FOOTER ============ -->
<footer>
  <div class="container">
    <div class="foot-grid">
      <div>
        <a href="#" class="logo">Nexus<span class="dot"></span>Shop</a>
        <p style="margin-top: 14px; max-width: 300px;">
          Thoughtfully designed essentials for everyday life. Made with care, shipped with speed.
        </p>
        <div class="socials">
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-x-twitter"></i></a>
          <a href="#" aria-label="TikTok"><i class="fab fa-tiktok"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>

      <div>
        <h4>Shop</h4>
        <ul>
          <li><a href="#">New arrivals</a></li>
          <li><a href="#">Best sellers</a></li>
          <li><a href="#">Sale</a></li>
          <li><a href="#">Gift cards</a></li>
        </ul>
      </div>

      <div>
        <h4>Support</h4>
        <ul>
          <li><a href="#">Help center</a></li>
          <li><a href="#">Shipping</a></li>
          <li><a href="#">Returns</a></li>
          <li><a href="#">Track order</a></li>
        </ul>
      </div>

      <div>
        <h4>Company</h4>
        <ul>
          <li><a href="#">About us</a></li>
          <li><a href="#">Careers</a></li>
          <li><a href="#">Sustainability</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
    </div>

    <div class="foot-bottom">
      <span>© 2025 NexusShop. All rights reserved.</span>
      <span>
        <a href="#">Privacy</a> · <a href="#">Terms</a> · <a href="#">Cookies</a>
      </span>
    </div>
  </div>
</footer>

</body>
</html>
