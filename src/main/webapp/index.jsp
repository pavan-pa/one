<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="NexusShop — curated tech, fashion and everyday gear.">
<title>NexusShop — Shop Better</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root {
    --primary: #ff5a36;
    --primary-dark: #e84725;
    --yellow: #ffd85c;
    --green: #42b883;
    --navy: #172033;
    --text: #20242d;
    --muted: #727987;
    --bg: #f7f7f5;
    --white: #fff;
    --border: #e8e8e4;
    --soft: #f0f1ed;
    --radius: 18px;
    --shadow: 0 10px 30px rgba(28,35,45,.08);
    --shadow-hover: 0 18px 45px rgba(28,35,45,.14);
    --container: 1280px;
    --transition: .22s ease;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "DM Sans", sans-serif;
    color: var(--text);
    background: var(--bg);
    line-height: 1.5;
}

body.no-scroll {
    overflow: hidden;
}

h1,h2,h3,h4,h5 {
    font-family: "Manrope", sans-serif;
    line-height: 1.12;
}

button,
input {
    font: inherit;
}

button {
    cursor: pointer;
}

a {
    color: inherit;
    text-decoration: none;
}

img {
    display: block;
    width: 100%;
}

.container {
    width: min(100% - 40px, var(--container));
    margin-inline: auto;
}

/* ================= HEADER ================= */

.topbar {
    background: var(--navy);
    color: white;
    font-size: .85rem;
    padding: 8px 0;
}

.topbar-inner {
    display: flex;
    justify-content: space-between;
    gap: 20px;
}

.topbar span {
    opacity: .9;
}

.header {
    position: sticky;
    top: 0;
    z-index: 100;
    background: rgba(255,255,255,.95);
    backdrop-filter: blur(14px);
    border-bottom: 1px solid var(--border);
}

.header-main {
    height: 76px;
    display: flex;
    align-items: center;
    gap: 30px;
}

.logo {
    display: flex;
    align-items: center;
    gap: 9px;
    font-family: "Manrope", sans-serif;
    font-size: 1.45rem;
    font-weight: 800;
    white-space: nowrap;
}

.logo-mark {
    width: 36px;
    height: 36px;
    border-radius: 11px;
    display: grid;
    place-items: center;
    color: white;
    background: var(--primary);
}

.nav {
    display: flex;
    align-items: center;
    gap: 5px;
    margin-right: auto;
}

.nav a {
    padding: 10px 13px;
    border-radius: 9px;
    font-size: .9rem;
    font-weight: 600;
    color: #555c68;
    transition: var(--transition);
}

.nav a:hover,
.nav a.active {
    color: var(--primary);
    background: #fff2ee;
}

.search {
    width: 270px;
    height: 44px;
    display: flex;
    align-items: center;
    gap: 8px;
    background: var(--soft);
    border-radius: 12px;
    padding: 0 13px;
}

.search i {
    color: var(--muted);
}

.search input {
    width: 100%;
    border: 0;
    outline: 0;
    background: transparent;
    color: var(--text);
    font-size: .9rem;
}

.header-actions {
    display: flex;
    gap: 7px;
}

.header-btn {
    position: relative;
    width: 44px;
    height: 44px;
    display: grid;
    place-items: center;
    border: 1px solid var(--border);
    background: white;
    border-radius: 12px;
    color: var(--text);
    transition: var(--transition);
}

.header-btn:hover {
    color: var(--primary);
    border-color: #ffd1c6;
    background: #fff7f4;
}

.count {
    position: absolute;
    top: -5px;
    right: -5px;
    min-width: 19px;
    height: 19px;
    padding: 0 4px;
    border-radius: 20px;
    background: var(--primary);
    color: white;
    border: 2px solid white;
    display: grid;
    place-items: center;
    font-size: .65
