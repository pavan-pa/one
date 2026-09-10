<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop · re:imagine</title>

    <!-- fonts & icons -->
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=Archivo+Black&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --ink: #0b0b0b;
            --paper: #fff9f2;
            --highlight: #ffd966;
            --accent: #fc4a1a;
            --accent2: #3f2e56;
            --mint: #b7e4c7;
            --sky: #b5d8e9;
            --surface: #ffffff;
            --border: 3px solid var(--ink);
            --shadow: 8px 8px 0 rgba(0, 0, 0, 0.15);
            --shadow-light: 4px 4px 0 rgba(0, 0, 0, 0.1);
            --radius: 28px;
            --radius-sm: 12px;
            --container: 1320px;
            --transition: 0.2s ease;
        }

        body {
            font-family: 'Space Grotesk', sans-serif;
            background: var(--paper);
            color: var(--ink);
            line-height: 1.4;
            -webkit-font-smoothing: antialiased;
        }

        /* brutalist reset */
        h1, h2, h3, h4, h5 {
            font-family: 'Archivo Black', sans-serif;
            font-weight: 400;
            letter-spacing: -0.02em;
            text-transform: uppercase;
            line-height: 1.1;
        }

        a, button {
            font-family: inherit;
            color: inherit;
            text-decoration: none;
            background: none;
            border: none;
            cursor: pointer;
        }

        img {
            display: block;
            max-width: 100%;
            object-fit: cover;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ---------- GLOBAL SHAPES / CARDS ---------- */
        .card-brutal {
            background: var(--surface);
            border: var(--border);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            transition: var(--transition);
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 16px 32px;
            font-weight: 600;
            font-size: 1rem;
            border: var(--border);
            border-radius: 60px;
            background: var(--surface);
            box-shadow: var(--shadow-light);
            transition: var(--transition);
            text-transform: uppercase;
            letter-spacing: 0.02em;
            color: var(--ink);
            border-width: 3px;
        }

        .btn:hover {
            transform: translate(-3px, -3px);
            box-shadow: 8px 8px 0 var(--ink);
        }

        .btn-primary {
            background: var(--accent);
            color: #fff;
            border-color: var(--ink);
        }

        .btn-outline {
            background: transparent;
        }

        .btn-highlight {
            background: var(--highlight);
            border-color: var(--ink);
        }

        /* ---------- HEADER (RADICAL) ---------- */
        .header-brutal {
            padding: 20px 0;
            border-bottom: var(--border);
            background: var(--paper);
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(6px);
            background: rgba(255, 249, 242, 0.92);
        }

        .header-grid {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 20px;
        }

        .brand-brutal {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: 'Archivo Black', sans-serif;
            font-size: 2rem;
            letter-spacing: -0.03em;
            background: var(--ink);
            color: var(--paper);
            padding: 8px 24px 8px 18px;
            border-radius: 100px;
            border: 3px solid var(--ink);
            box-shadow: var(--shadow-light);
        }

        .brand-brutal i {
            color: var(--highlight);
            font-size: 1.8rem;
        }

        .nav-brutal {
            display: flex;
            gap: 8px;
            background: var(--surface);
            padding: 8px 12px;
            border: var(--border);
            border-radius: 100px;
            box-shadow: var(--shadow-light);
        }

        .nav-brutal a {
            padding: 8px 18px;
            font-weight: 600;
            border-radius: 40px;
            transition: var(--transition);
            font-size: 0.95rem;
            text-transform: uppercase;
            letter-spacing: 0.02em;
        }

        .nav-brutal a:hover,
        .nav-brutal a.active {
            background: var(--ink);
            color: var(--paper);
        }

        .header-actions-brutal {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .search-brutal {
            display: flex;
            align-items: center;
            background: var(--surface);
            border: var(--border);
            border-radius: 60px;
            padding: 0 10px 0 24px;
            box-shadow: var(--shadow-light);
            min-width: 260px;
        }

        .search-brutal input {
            border: none;
            outline: none;
            background: transparent;
            padding: 14px 0;
            font-weight: 500;
            width: 100%;
            font-family: 'Space Grotesk', sans-serif;
        }

        .search-brutal button {
            background: var(--ink);
            color: var(--paper);
            width: 44px;
            height: 44px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid var(--ink);
            transition: var(--transition);
        }

        .search-brutal button:hover {
            background: var(--accent);
        }

        .icon-brutal {
            background: var(--surface);
            border: var(--border);
            width: 52px;
            height: 52px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 1.3rem;
            box-shadow: var(--shadow-light);
            transition: var(--transition);
            position: relative;
        }

        .icon-brutal:hover {
            transform: translate(-3px, -3px);
            box-shadow: 6px 6px 0 var(--ink);
        }

        .cart-count-brutal {
            position: absolute;
            top: -8px;
            right: -8px;
            background: var(--accent);
            color: #fff;
            border: 2px solid var(--ink);
            border-radius: 50%;
            width: 28px;
            height: 28px;
            display: grid;
            place-items: center;
            font-size: 0.8rem;
            font-weight: 700;
            font-family: 'Space Grotesk', sans-serif;
        }

        .mobile-toggle-brutal {
            display: none;
            background: var(--surface);
            border: var(--border);
            width: 52px;
            height: 52px;
            border-radius: 50%;
            font-size: 1.5rem;
            box-shadow: var(--shadow-light);
        }

        /* mobile menu */
        .mobile-menu-brutal {
            display: none;
            border-top: var(--border);
            background: var(--paper);
            padding: 16px 0 24px;
        }

        .mobile-menu-brutal ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .mobile-menu-brutal li a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 14px 20px;
            border: var(--border);
            border-radius: 50px;
            font-weight: 600;
            background: var(--surface);
            box-shadow: var(--shadow-light);
        }

        /* ---------- HERO (BRUTALIST) ---------- */
        .hero-brutal {
            padding: 40px 0 20px;
        }

        .hero-card {
            background: var(--mint);
            border: var(--border);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            padding: 60px 60px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
            flex-wrap: wrap;
            position: relative;
            overflow: hidden;
            background-image: radial-gradient(circle at 20% 40%, rgba(255, 255, 255, 0.3) 0%, transparent 30%);
        }

        .hero-card .tag-brutal {
            display: inline-block;
            background: var(--ink);
            color: var(--highlight);
            padding: 8px 20px;
            border-radius: 40px;
            font-weight: 700;
            font-size: 0.85rem;
            letter-spacing: 0.06em;
            text-transform: uppercase;
            border: 2px solid var(--ink);
            margin-bottom: 24px;
        }

        .hero-card h1 {
            font-size: 5rem;
            max-width: 700px;
            line-height: 0.95;
            margin-bottom: 24px;
            color: var(--ink);
            text-shadow: 4px 4px 0 rgba(0, 0, 0, 0.1);
        }

        .hero-card h1 span {
            background: var(--highlight);
            padding: 0 12px;
            border-radius: 60px;
            display: inline-block;
            border: 3px solid var(--ink);
            transform: rotate(-1deg);
        }

        .hero-card p {
            font-size: 1.25rem;
            max-width: 560px;
            margin-bottom: 32px;
            font-weight: 500;
            color: #1f1f1f;
        }

        .hero-actions {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }

        /* ---------- SECTION HEADER ---------- */
        .section-header-brutal {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            margin-bottom: 40px;
            flex-wrap: wrap;
            gap: 20px;
        }

        .section-header-brutal h2 {
            font-size: 3rem;
            letter-spacing: -0.03em;
            background: var(--highlight);
            display: inline-block;
            padding: 0 16px 0 0;
            border-right: 6px solid var(--ink);
        }

        .section-header-brutal p {
            font-size: 1.1rem;
            font-weight: 500;
            color: #2e2e2e;
        }

        .view-all-brutal {
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.04em;
            border-bottom: 4px solid var(--accent);
            padding-bottom: 4px;
        }

        /* ---------- CATEGORIES ---------- */
        .categories-brutal {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 20px;
        }

        .cat-brutal {
            background: var(--surface);
            border: var(--border);
            border-radius: 30px;
            box-shadow: var(--shadow-light);
            padding: 28px 10px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
        }

        .cat-brutal:hover {
            transform: translate(-5px, -5px);
            box-shadow: 12px 12px 0 var(--ink);
            background: var(--highlight);
        }

        .cat-brutal .icon-brutal-circle {
            width: 70px;
            height: 70px;
            border-radius: 50%;
            background: var(--paper);
            border: var(--border);
            display: grid;
            place-items: center;
            margin: 0 auto 18px;
            font-size: 2rem;
        }

        .cat-brutal h4 {
            font-size: 1.1rem;
            font-family: 'Archivo Black', sans-serif;
            margin-bottom: 4px;
        }

        .cat-brutal .count-brutal {
            font-weight: 600;
            font-size: 0.9rem;
            opacity: 0.7;
        }

        /* ---------- PRODUCTS ---------- */
        .products-grid-brutal {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 28px;
        }

        .product-brutal {
            background: var(--surface);
            border: var(--border);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            overflow: hidden;
            transition: var(--transition);
            display: flex;
            flex-direction: column;
        }

        .product-brutal:hover {
            transform: translate(-6px, -6px);
            box-shadow: 14px 14px 0 var(--ink);
        }

        .product-brutal .img-wrap-brutal {
            aspect-ratio: 1/1;
            border-bottom: var(--border);
            background: #eaeaea;
            position: relative;
            overflow: hidden;
        }

        .product-brutal .img-wrap-brutal img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s;
        }

        .product-brutal:hover .img-wrap-brutal img {
            transform: scale(1.03);
        }

        .badge-brutal {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--accent);
            color: white;
            border: 2px solid var(--ink);
            border-radius: 40px;
            padding: 5px 16px;
            font-weight: 700;
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.03em;
            box-shadow: var(--shadow-light);
        }

        .badge-brutal.sale {
            background: var(--highlight);
            color: var(--ink);
        }

        .wish-brutal {
            position: absolute;
            top: 16px;
            right: 16px;
            background: var(--surface);
            border: 2px solid var(--ink);
            width: 44px;
            height: 44px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 1.1rem;
            box-shadow: var(--shadow-light);
            transition: var(--transition);
        }

        .wish-brutal:hover {
            background: var(--accent);
            color: white;
        }

        .product-brutal .body-brutal {
            padding: 22px 20px 16px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .category-tag-brutal {
            font-size: 0.7rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.06em;
            color: var(--accent);
            border-bottom: 2px solid var(--accent);
            display: inline-block;
            align-self: flex-start;
        }

        .product-brutal h5 {
            font-size: 1.2rem;
            font-family: 'Archivo Black', sans-serif;
            line-height: 1.2;
            margin: 4px 0 0;
        }

        .price-row-brutal {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: 8px;
        }

        .price-brutal {
            font-size: 1.7rem;
            font-weight: 700;
            font-family: 'Archivo Black', sans-serif;
        }

        .old-price-brutal {
            font-size: 1rem;
            text-decoration: line-through;
            opacity: 0.6;
            font-weight: 500;
        }

        .rating-brutal {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 1rem;
            color: #f5a623;
            font-weight: 600;
        }

        .product-brutal .footer-brutal {
            padding: 0 20px 20px;
        }

        .add-btn-brutal {
            width: 100%;
            padding: 16px;
            background: var(--ink);
            color: var(--paper);
            border: 3px solid var(--ink);
            border-radius: 60px;
            font-weight: 700;
            font-size: 1rem;
            text-transform: uppercase;
            letter-spacing: 0.03em;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            transition: var(--transition);
            box-shadow: var(--shadow-light);
        }

        .add-btn-brutal:hover {
            background: var(--accent);
            color: white;
            border-color: var(--ink);
            transform: translate(-2px, -2px);
            box-shadow: 6px 6px 0 var(--ink);
        }

        .add-btn-brutal.added {
            background: #2a9d8f;
            border-color: var(--ink);
        }

        /* ---------- DEAL SECTION ---------- */
        .deal-brutal {
            display: flex;
            background: var(--sky);
            border: var(--border);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            overflow: hidden;
            flex-wrap: wrap;
        }

        .deal-img-brutal {
            flex: 1 1 45%;
            min-height: 400px;
            border-right: var(--border);
        }

        .deal-img-brutal img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content-brutal {
            flex: 1 1 50%;
            padding: 50px 50px;
            background: var(--surface);
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-content-brutal .tag-brutal {
            align-self: flex-start;
            background: var(--accent);
            color: #fff;
            border: 2px solid var(--ink);
            border-radius: 40px;
            padding: 8px 22px;
            font-weight: 700;
            font-size: 0.8rem;
            text-transform: uppercase;
            margin-bottom: 18px;
        }

        .deal-content-brutal h3 {
            font-size: 3rem;
            margin-bottom: 12px;
        }

        .deal-content-brutal .desc-brutal {
            font-size: 1.2rem;
            font-weight: 500;
            margin-bottom: 24px;
            opacity: 0.8;
        }

        .price-big-brutal {
            font-size: 3.2rem;
            font-family: 'Archivo Black', sans-serif;
            line-height: 1;
        }

        .price-big-brutal .old-brutal {
            font-size: 1.6rem;
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 400;
            text-decoration: line-through;
            opacity: 0.5;
            margin-left: 14px;
        }

        .stock-brutal {
            font-size: 1.2rem;
            margin: 10px 0 20px;
            font-weight: 600;
        }

        .stock-brutal strong {
            background: var(--accent);
            color: white;
            padding: 2px 12px;
            border-radius: 40px;
            border: 2px solid var(--ink);
        }

        .timer-grid-brutal {
            display: flex;
            gap: 14px;
            margin: 18px 0 28px;
        }

        .timer-box-brutal {
            background: var(--ink);
            color: var(--paper);
            border: 3px solid var(--ink);
            border-radius: 16px;
            padding: 12px 16px;
            min-width: 80px;
            text-align: center;
            box-shadow: var(--shadow-light);
        }

        .timer-box-brutal .num-brutal {
            font-size: 2rem;
            font-weight: 800;
            font-family: 'Archivo Black', sans-serif;
            line-height: 1.1;
        }

        .timer-box-brutal .label-brutal {
            font-size: 0.7rem;
            text-transform: uppercase;
            opacity: 0.8;
            letter-spacing: 0.08em;
        }

        /* ---------- TESTIMONIALS ---------- */
        .testimonials-scroll-brutal {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 20px 4px 28px;
            scroll-snap-type: x mandatory;
        }

        .testimonial-brutal {
            flex: 0 0 360px;
            background: var(--surface);
            border: var(--border);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            padding: 32px 28px;
            scroll-snap-align: start;
            transition: var(--transition);
        }

        .testimonial-brutal:hover {
            transform: translate(-5px, -5px);
            box-shadow: 12px 12px 0 var(--ink);
        }

        .stars-brutal {
            font-size: 1.5rem;
            letter-spacing: 4px;
            color: #f5a623;
            margin-bottom: 16px;
        }

        .testimonial-brutal blockquote {
            font-size: 1.15rem;
            font-weight: 500;
            line-height: 1.5;
            margin-bottom: 24px;
        }

        .author-brutal {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .avatar-brutal {
            width: 58px;
            height: 58px;
            border-radius: 50%;
            border: 3px solid var(--ink);
            object-fit: cover;
            background: #ddd;
        }

        .author-brutal .name-brutal {
            font-weight: 700;
            font-size: 1.1rem;
            font-family: 'Archivo Black', sans-serif;
        }

        .author-brutal .role-brutal {
            font-size: 0.9rem;
            font-weight: 500;
            opacity: 0.7;
        }

        /* ---------- NEWSLETTER ---------- */
        .newsletter-brutal {
            background: var(--highlight);
            border: var(--border);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            padding: 56px 60px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 32px;
        }

        .newsletter-brutal h3 {
            font-size: 2.8rem;
            margin-bottom: 8px;
        }

        .newsletter-brutal p {
            font-size: 1.2rem;
            font-weight: 500;
        }

        .newsletter-brutal form {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 520px;
        }

        .newsletter-brutal input {
            flex: 1;
            min-width: 220px;
            padding: 20px 24px;
            border: var(--border);
            border-radius: 60px;
            font-size: 1.1rem;
            background: var(--surface);
            font-family: 'Space Grotesk', sans-serif;
            box-shadow: var(--shadow-light);
            outline: none;
        }

        .newsletter-brutal .btn {
            padding: 20px 32px;
        }

        #newsletterMsg {
            margin-top: 16px;
            font-weight: 600;
            font-size: 1rem;
        }

        /* ---------- FOOTER ---------- */
        .footer-brutal {
            margin-top: 40px;
            padding: 50px 0 30px;
            border-top: var(--border);
        }

        .footer-grid-brutal {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-brand-brutal {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: 'Archivo Black', sans-serif;
            font-size: 1.8rem;
            background: var(--ink);
            color: var(--paper);
            padding: 6px 18px;
            border-radius: 60px;
            border: 3px solid var(--ink);
            width: fit-content;
            margin-bottom: 16px;
        }

        .footer-brand-brutal i {
            color: var(--highlight);
        }

        .footer-brutal p {
            font-weight: 500;
            opacity: 0.8;
            margin-bottom: 20px;
        }

        .socials-brutal {
            display: flex;
            gap: 14px;
        }

        .socials-brutal a {
            width: 52px;
            height: 52px;
            border: var(--border);
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 1.4rem;
            background: var(--surface);
            box-shadow: var(--shadow-light);
            transition: var(--transition);
        }

        .socials-brutal a:hover {
            background: var(--accent);
            color: white;
            transform: translate(-3px, -3px);
            box-shadow: 6px 6px 0 var(--ink);
        }

        .footer-col-brutal h5 {
            font-family: 'Archivo Black', sans-serif;
            font-size: 1.3rem;
            margin-bottom: 20px;
            border-bottom: 4px solid var(--accent);
            display: inline-block;
            padding-bottom: 4px;
        }

        .footer-col-brutal ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .footer-col-brutal a {
            font-weight: 600;
            opacity: 0.75;
            transition: var(--transition);
            font-size: 1rem;
        }

        .footer-col-brutal a:hover {
            opacity: 1;
            color: var(--accent);
        }

        .footer-bottom-brutal {
            text-align: center;
            padding-top: 28px;
            border-top: 2px dashed rgba(0, 0, 0, 0.15);
            font-weight: 600;
            opacity: 0.7;
            font-size: 0.95rem;
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 1200px) {
            .products-grid-brutal {
                grid-template-columns: repeat(3, 1fr);
            }

            .categories-brutal {
                grid-template-columns: repeat(3, 1fr);
            }

            .hero-card h1 {
                font-size: 4rem;
            }

            .footer-grid-brutal {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 992px) {
            .nav-brutal {
                display: none;
            }

            .mobile-toggle-brutal {
                display: grid;
                place-items: center;
            }

            .header-grid {
                justify-content: space-between;
            }

            .search-brutal {
                display: none;
            }

            .hero-card {
                padding: 40px 36px;
            }

            .hero-card h1 {
                font-size: 3.2rem;
            }

            .deal-content-brutal {
                padding: 36px 32px;
            }

            .newsletter-brutal {
                padding: 40px 36px;
            }

            .newsletter-brutal h3 {
                font-size: 2.2rem;
            }

            .footer-grid-brutal {
                grid-template-columns: 1fr;
            }

            .products-grid-brutal {
                grid-template-columns: repeat(2, 1fr);
            }

            .categories-brutal {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 600px) {
            .container {
                padding: 0 16px;
            }

            .hero-card {
                padding: 32px 20px;
            }

            .hero-card h1 {
                font-size: 2.5rem;
            }

            .hero-card p {
                font-size: 1rem;
            }

            .btn {
                padding: 14px 22px;
                font-size: 0.9rem;
            }

            .section-header-brutal h2 {
                font-size: 2.2rem;
            }

            .products-grid-brutal {
                grid-template-columns: 1fr;
            }

            .deal-img-brutal {
                min-height: 220px;
            }

            .deal-content-brutal h3 {
                font-size: 2.2rem;
            }

            .price-big-brutal {
                font-size: 2.4rem;
            }

            .timer-box-brutal {
                min-width: 60px;
                padding: 8px 10px;
            }

            .timer-box-brutal .num-brutal {
                font-size: 1.5rem;
            }

            .newsletter-brutal {
                padding: 28px 20px;
            }

            .newsletter-brutal h3 {
                font-size: 1.9rem;
            }

            .testimonial-brutal {
                flex: 0 0 280px;
                padding: 24px 20px;
            }

            .brand-brutal {
                font-size: 1.5rem;
                padding: 6px 16px 6px 12px;
            }

            .icon-brutal {
                width: 46px;
                height: 46px;
                font-size: 1.1rem;
            }
        }
    </style>
</head>

<body>

    <!-- ========== HEADER ========== -->
    <header class="header-brutal">
        <div class="container header-grid">
            <div style="display: flex; align-items: center; gap: 16px;">
                <button class="mobile-toggle-brutal" id="mobileToggle" aria-label="menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a href="#" class="brand-brutal">
                    <i class="fas fa-bolt"></i>
                    NEXUS<span style="color: var(--highlight);">SHOP</span>
                </a>
            </div>

            <nav class="nav-brutal" id="mainNav">
                <a href="#" class="active">HOME</a>
                <a href="#categories">CATEGORIES</a>
                <a href="#products">TRENDING</a>
                <a href="#deals">DEALS</a>
                <a href="#testimonials">REVIEWS</a>
            </nav>

            <div class="header-actions-brutal">
                <div class="search-brutal">
                    <input type="search" id="searchInput" placeholder="SEARCH..." aria-label="search">
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                </div>

                <button class="icon-brutal" aria-label="account"><i class="far fa-user"></i></button>
                <button class="icon-brutal" aria-label="wishlist"><i class="far fa-heart"></i></button>
                <div style="position: relative;">
                    <button class="icon-brutal" id="cartBtn" aria-label="cart">
                        <i class="fas fa-shopping-bag"></i>
                    </button>
                    <span class="cart-count-brutal" id="cartCount">0</span>
                </div>
            </div>
        </div>

        <!-- mobile menu -->
        <div class="mobile-menu-brutal" id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> HOME</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> CATEGORIES</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> TRENDING</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> DEALS</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> REVIEWS</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <!-- ===== HERO ===== -->
        <section class="hero-brutal">
            <div class="container">
                <div class="hero-card">
                    <div>
                        <span class="tag-brutal">🔥 NEW DROP 2026</span>
                        <h1>BOLD<br><span>SHOPPING</span><br>EXPERIENCE</h1>
                        <p>Curated tech, fashion & gear. Free shipping on first order. No boring stuff.</p>
                        <div class="hero-actions">
                            <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> SHOP NOW</button>
                            <button class="btn btn-outline" id="exploreDeals"><i class="fas fa-clock"></i> FLASH DEALS</button>
                        </div>
                    </div>
                    <div style="font-size: 8rem; line-height: 1; opacity: 0.15; font-family: 'Archivo Black'; user-select: none;">
                        <i class="fas fa-store"></i>
                    </div>
                </div>
            </div>
        </section>

        <!-- ===== CATEGORIES ===== -->
        <section class="section-brutal" id="categories" style="padding: 60px 0 20px;">
            <div class="container">
                <div class="section-header-brutal">
                    <div>
                        <h2>BROWSE</h2>
                        <p>find your next obsession</p>
                    </div>
                    <a href="#" class="view-all-brutal">ALL CATEGORIES <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-brutal" id="categoriesGrid"></div>
            </div>
