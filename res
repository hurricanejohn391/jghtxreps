<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HTXreps - Premium Replica Fashion</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700;900&family=DM+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --cream: #FAF8F3;
            --charcoal: #2A2A2A;
            --sage: #9CAF88;
            --terracotta: #D4856A;
            --sand: #E8DCC4;
            --forest: #4A5F4F;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'DM Sans', sans-serif;
            background: var(--cream);
            color: var(--charcoal);
            line-height: 1.6;
            overflow-x: hidden;
        }
        nav {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(250, 248, 243, 0.95);
            backdrop-filter: blur(10px);
            padding: 1.5rem 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
            border-bottom: 1px solid rgba(42, 42, 42, 0.1);
            animation: slideDown 0.6s ease-out;
        }
        @keyframes slideDown {
            from { transform: translateY(-100%); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
        .logo {
            font-family: 'Playfair Display', serif;
            font-size: 2rem;
            font-weight: 900;
            letter-spacing: -0.02em;
            color: var(--charcoal);
        }
        .nav-links {
            display: flex;
            gap: 2.5rem;
            list-style: none;
        }
        .nav-links a {
            text-decoration: none;
            color: var(--charcoal);
            font-weight: 500;
            font-size: 0.95rem;
            letter-spacing: 0.02em;
            transition: color 0.3s ease;
            position: relative;
        }
        .nav-links a:after {
            content: '';
            position: absolute;
            bottom: -4px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--terracotta);
            transition: width 0.3s ease;
        }
        .nav-links a:hover:after { width: 100%; }
        .nav-links a:hover { color: var(--terracotta); }
        .hero {
            margin-top: 90px;
            min-height: 90vh;
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            padding: 3rem 5%;
            gap: 4rem;
            position: relative;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -20%;
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, var(--sage) 0%, transparent 70%);
            opacity: 0.15;
            z-index: 0;
            animation: float 8s ease-in-out infinite;
        }
        @keyframes float {
            0%, 100% { transform: translateY(0) rotate(0deg); }
            50% { transform: translateY(-30px) rotate(5deg); }
        }
        .hero-content {
            z-index: 1;
            animation: fadeInUp 0.8s ease-out 0.2s both;
        }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(40px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 4.5rem;
            font-weight: 900;
            line-height: 1.1;
            margin-bottom: 1.5rem;
            color: var(--charcoal);
            letter-spacing: -0.03em;
        }
        .hero-subtitle {
            font-size: 1.25rem;
            color: var(--forest);
            margin-bottom: 2.5rem;
            font-weight: 300;
            line-height: 1.8;
        }
        .cta-buttons {
            display: flex;
            gap: 1.5rem;
            flex-wrap: wrap;
        }
        .btn {
            padding: 1rem 2.5rem;
            border: none;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
            letter-spacing: 0.03em;
        }
        .btn-primary {
            background: var(--terracotta);
            color: white;
            box-shadow: 0 4px 20px rgba(212, 133, 106, 0.3);
        }
        .btn-primary:hover {
            background: #C07458;
            transform: translateY(-2px);
            box-shadow: 0 6px 25px rgba(212, 133, 106, 0.4);
        }
        .btn-secondary {
            background: transparent;
            color: var(--charcoal);
            border: 2px solid var(--charcoal);
        }
        .btn-secondary:hover {
            background: var(--charcoal);
            color: var(--cream);
        }
        .hero-image {
            position: relative;
            z-index: 1;
            animation: fadeInUp 0.8s ease-out 0.4s both;
        }
        .image-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1.5rem;
            max-width: 600px;
            margin-left: auto;
        }
        .image-card {
            position: relative;
            overflow: hidden;
            border-radius: 8px;
            aspect-ratio: 3/4;
            background: var(--sand);
            box-shadow: 0 10px 40px rgba(0,0,0,0.08);
            transition: transform 0.4s ease;
        }
        .image-card:hover { transform: translateY(-8px); }
        .image-card:nth-child(2) { margin-top: 3rem; }
        .features {
            padding: 8rem 5%;
            background: linear-gradient(180deg, var(--cream) 0%, var(--sand) 100%);
            position: relative;
        }
        .section-title {
            text-align: center;
            font-family: 'Playfair Display', serif;
            font-size: 3rem;
            font-weight: 700;
            margin-bottom: 4rem;
            color: var(--charcoal);
        }
        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 3rem;
            max-width: 1200px;
            margin: 0 auto;
        }
        .feature-card {
            background: white;
            padding: 3rem 2rem;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 8px 30px rgba(0,0,0,0.06);
            transition: all 0.4s ease;
            animation: fadeInUp 0.6s ease-out both;
        }
        .feature-card:nth-child(1) { animation-delay: 0.1s; }
        .feature-card:nth-child(2) { animation-delay: 0.2s; }
        .feature-card:nth-child(3) { animation-delay: 0.3s; }
        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 50px rgba(0,0,0,0.12);
        }
        .feature-icon {
            font-size: 3rem;
            margin-bottom: 1.5rem;
        }
        .feature-card h3 {
            font-family: 'Playfair Display', serif;
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--charcoal);
        }
        .feature-card p {
            color: var(--forest);
            line-height: 1.8;
        }
        .products {
            padding: 8rem 5%;
            background: var(--cream);
        }
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2.5rem;
            max-width: 1400px;
            margin: 0 auto;
        }
        .product-card {
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 6px 25px rgba(0,0,0,0.06);
            transition: all 0.4s ease;
            cursor: pointer;
            animation: fadeInUp 0.6s ease-out both;
        }
        .product-card:nth-child(1) { animation-delay: 0.1s; }
        .product-card:nth-child(2) { animation-delay: 0.2s; }
        .product-card:nth-child(3) { animation-delay: 0.3s; }
        .product-card:nth-child(4) { animation-delay: 0.4s; }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 40px rgba(0,0,0,0.12);
        }
        .product-image {
            width: 100%;
            aspect-ratio: 3/4;
            background: var(--sand);
            position: relative;
            overflow: hidden;
        }
        .product-tag {
            position: absolute;
            top: 1rem;
            right: 1rem;
            background: var(--terracotta);
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: 600;
            letter-spacing: 0.02em;
        }
        .product-info {
            padding: 1.5rem;
        }
        .product-info h3 {
            font-family: 'Playfair Display', serif;
            font-size: 1.3rem;
            margin-bottom: 0.5rem;
            color: var(--charcoal);
        }
        .product-info .brand {
            font-size: 0.9rem;
            color: var(--forest);
            margin-bottom: 1rem;
        }
        .product-price {
            display: flex;
            gap: 1rem;
            align-items: center;
            font-weight: 600;
        }
        .current-price {
            font-size: 1.3rem;
            color: var(--terracotta);
        }
        .original-price {
            font-size: 1rem;
            color: #999;
            text-decoration: line-through;
        }
        .payment-methods {
            padding: 6rem 5%;
            background: white;
        }
        .payment-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto 3rem;
        }
        .payment-card {
            background: var(--cream);
            padding: 2.5rem 2rem;
            border-radius: 12px;
            text-align: center;
            border: 2px solid var(--sand);
            transition: all 0.3s ease;
        }
        .payment-card:hover {
            border-color: var(--terracotta);
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }
        .payment-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
        }
        .payment-card h3 {
            font-family: 'Playfair Display', serif;
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--charcoal);
        }
        .payment-card p {
            color: var(--forest);
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }
        .payment-card strong {
            color: var(--terracotta);
            font-weight: 600;
        }
        .payment-notice {
            max-width: 900px;
            margin: 0 auto;
            padding: 2rem;
            background: var(--sand);
            border-left: 4px solid var(--terracotta);
            border-radius: 8px;
            text-align: left;
        }
        .payment-notice p {
            color: var(--charcoal);
            font-weight: 500;
            font-size: 1rem;
            line-height: 1.6;
        }
        .custom-orders {
            padding: 6rem 5%;
            background: var(--cream);
        }
        .custom-order-form-container {
            max-width: 800px;
            margin: 0 auto;
            background: white;
            padding: 3rem;
            border-radius: 12px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.08);
        }
        .custom-order-form {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }
        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1.5rem;
        }
        .form-group {
            display: flex;
            flex-direction: column;
        }
        .form-group label {
            font-weight: 600;
            margin-bottom: 0.5rem;
            color: var(--charcoal);
            font-size: 0.95rem;
        }
        .form-group input,
        .form-group textarea,
        .form-group select {
            padding: 0.9rem 1.2rem;
            border: 2px solid var(--sand);
            border-radius: 6px;
            font-size: 1rem;
            font-family: 'DM Sans', sans-serif;
            transition: all 0.3s ease;
        }
        .form-group input:focus,
        .form-group textarea:focus,
        .form-group select:focus {
            outline: none;
            border-color: var(--terracotta);
            box-shadow: 0 0 0 3px rgba(212, 133, 106, 0.1);
        }
        .form-group textarea {
            resize: vertical;
            min-height: 100px;
        }
        .newsletter {
            padding: 6rem 5%;
            background: var(--forest);
            color: var(--cream);
            text-align: center;
        }
        .newsletter h2 {
            font-family: 'Playfair Display', serif;
            font-size: 2.5rem;
            margin-bottom: 1rem;
            font-weight: 700;
        }
        .newsletter p {
            font-size: 1.1rem;
            margin-bottom: 2.5rem;
            opacity: 0.9;
        }
        .newsletter-form {
            display: flex;
            max-width: 500px;
            margin: 0 auto;
            gap: 1rem;
        }
        .newsletter-form input {
            flex: 1;
            padding: 1rem 1.5rem;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            font-family: 'DM Sans', sans-serif;
        }
        .newsletter-form button {
            padding: 1rem 2rem;
            background: var(--terracotta);
            color: white;
            border: none;
            border-radius: 4px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .newsletter-form button:hover {
            background: #C07458;
            transform: translateY(-2px);
        }
        footer {
            background: var(--charcoal);
            color: var(--cream);
            padding: 4rem 5% 2rem;
        }
        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 3rem;
            max-width: 1400px;
            margin: 0 auto 3rem;
        }
        .footer-section h4 {
            font-family: 'Playfair Display', serif;
            font-size: 1.3rem;
            margin-bottom: 1.5rem;
        }
        .footer-section ul {
            list-style: none;
        }
        .footer-section ul li {
            margin-bottom: 0.8rem;
        }
        .footer-section a {
            color: var(--cream);
            text-decoration: none;
            opacity: 0.8;
            transition: opacity 0.3s ease;
        }
        .footer-section a:hover {
            opacity: 1;
        }
        .footer-bottom {
            text-align: center;
            padding-top: 2rem;
            border-top: 1px solid rgba(250, 248, 243, 0.2);
            opacity: 0.7;
        }
        .legal-notice {
            background: rgba(212, 133, 106, 0.15);
            border: 1px solid var(--terracotta);
            border-radius: 8px;
            padding: 1.5rem;
            margin-bottom: 2rem;
            opacity: 1;
        }
        .legal-notice p {
            font-size: 0.95rem;
            margin-bottom: 1rem;
            line-height: 1.6;
        }
        .legal-notice strong {
            color: var(--terracotta);
            font-weight: 700;
        }
        .legal-notice ul {
            list-style: none;
            padding: 0;
            font-size: 0.9rem;
        }
        .legal-notice ul li {
            margin-bottom: 0.5rem;
            padding-left: 1.5rem;
            position: relative;
        }
        .legal-notice ul li:before {
            content: "•";
            position: absolute;
            left: 0;
            color: var(--terracotta);
            font-weight: bold;
        }
        @media (max-width: 768px) {
            .hero {
                grid-template-columns: 1fr;
                text-align: center;
                padding: 2rem 5%;
            }
            .hero h1 {
                font-size: 3rem;
            }
            .image-grid {
                margin: 0 auto;
            }
            .nav-links {
                display: none;
            }
            .cta-buttons {
                justify-content: center;
            }
            .newsletter-form {
                flex-direction: column;
            }
            .form-row {
                grid-template-columns: 1fr;
            }
            .custom-order-form-container {
                padding: 2rem 1.5rem;
            }
        }
    </style>
</head>
<body>
    <nav>
        <div class="logo">HTXreps</div>
        <ul class="nav-links">
            <li><a href="#shop">Shop</a></li>
            <li><a href="#custom-order">Custom Orders</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>

    <section class="hero">
        <div class="hero-content">
            <h1>Timeless Style, Second Life</h1>
            <p class="hero-subtitle">Discover high-quality replica fashion pieces at unbeatable prices. Style that's accessible to everyone.</p>
            <div class="cta-buttons">
                <a href="#shop" class="btn btn-primary">Shop Collection</a>
                <a href="#custom-order" class="btn btn-secondary">Custom Orders</a>
            </div>
        </div>
        <div class="hero-image">
            <div class="image-grid">
                <div class="image-card"></div>
                <div class="image-card"></div>
            </div>
        </div>
    </section>

    <section class="features">
        <h2 class="section-title">Why Choose HTXreps</h2>
        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon">💎</div>
                <h3>Premium Replicas</h3>
                <p>High-quality replica items that give you the designer look without the designer price tag.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">✨</div>
                <h3>Quality Assured</h3>
                <p>Each item is carefully selected for quality. Great style shouldn't break the bank.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">💰</div>
                <h3>Unbeatable Prices</h3>
                <p>Designer aesthetics at a fraction of the cost. Luxury style made affordable.</p>
            </div>
        </div>
    </section>

    <section class="products" id="shop">
        <h2 class="section-title">Featured Finds</h2>
        <div class="products-grid">
            <div class="product-card">
                <div class="product-image">
                    <span class="product-tag">New Arrival</span>
                </div>
                <div class="product-info">
                    <h3>Watches</h3>
                    <p class="brand">Rolex,Audemars piget ,cartier etc</p>
                    <div class="product-price">
                        <span class="current-price">$390-500</span>
                    </div>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="product-tag">Sale</span>
                </div>
                <div class="product-info">
                    <h3>Shoes</h3>
                    <p class="brands"> Ysl, Timberland ,Louis Vuitton ,Christan Lubiton ,Dior ,Burberry etc</p>
                    <div class="product-price">
                        <span class="current-price">$160-180</span>
                        <div class="product-size">
                      <span class="sizes">EU39-45</span>
                   </div>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="product-tag">Rare Find</span>
                </div>
                <div class="product-info">
                    <h3>Y2K/designer clothes</h3>
                    <p class="brands">Chrome Hearts ,Maison Margiela ,Rick Owens ,Balenciaga ,Moncler etc</p>
                    <div class="product-price">   
                      <span class="current-price">$60-120</span>
                      <div class="product-size">
                      <span class="sizes">S,M,L,Xl</span>
                 </div>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="product-tag">Featured</span>
                </div>
                <div class="product-info">
                    <h3>Accessories/fragrance</h3>
                    <p class="brands">Ysl, Versace ,Valentino ,Chrome Hearts ,louis Vuttion ,Moncler etc</p>
                    <div class="product-price">
                        <span class="current-price">$60-150</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="payment-methods">
        <h2 class="section-title">Payment Options</h2>
        <div class="payment-grid">
            <div class="payment-card">
                <div class="payment-icon">💸</div>
                <h3>PayPal</h3>
                <p>Send payment to:<br><strong>gulottajohn7@gmail.com</strong></p>
                <a href="https://paypal.me/"@johngulotta391 class="btn btn-primary" target="_blank">Pay with PayPal</a>
            </div>
          
            <div class="payment-card">
                <div class="payment-icon">💳</div>
                <h3>Cash App</h3>
                <p>Send payment to:<br><strong>$gulotta391</strong></p>
                <a href="https://cash.app/$gulotta391" class="btn btn-primary" target="_blank">Pay with Cash App</a>
            </div>
            
        </div>
        <div class="payment-notice">
            <p><strong>Payment Required:</strong> All purchases require upfront payment before shipping.</p>
            <p style="margin-top: 1rem;"><strong>Shipping Timeline:</strong> Products take a minimum of 2 weeks to receive. Please allow additional time for processing and delivery.</p>
            <p style="margin-top: 1rem; font-size: 0.95rem;"><strong>Lost/Seized Packages:</strong> In the event of package seizure or loss, we will reorder your item at no additional charge. Refunds are not available in these cases.</p>
        </div>
    </section>

    <section class="custom-orders" id="custom-order">
        <h2 class="section-title">Custom Orders</h2>
        <p style="text-align: center; max-width: 800px; margin: 0 auto 3rem; font-size: 1.1rem; color: var(--forest);">
            Can't find what you're looking for? Send us images or the brand/item name, and we'll source it for you!
        </p>
        <div class="custom-order-form-container">
            <form class="custom-order-form" id="customOrderForm">
                <div class="form-row">
                    <div class="form-group">
                        <label for="customerName">Your Name *</label>
                        <input type="text" id="customerName" name="customerName" required>
                    </div>
                    <div class="form-group">
                        <label for="customerEmail">Email Address *</label>
                        <input type="email" id="customerEmail" name="customerEmail" required>
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-group">
                        <label for="customerPhone">Mobile Number *</label>
                        <input type="tel" id="customerPhone" name="customerPhone" placeholder="(123) 456-7890" required>
                    </div>
                    <div class="form-group">
                        <label for="preferredContact">Preferred Contact Method *</label>
                        <select id="preferredContact" name="preferredContact" required>
                            <option value="">Select...</option>
                            <option value="email">Email</option>
                            <option value="phone">Phone/Text</option>
                            <option value="either">Either</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="brandItem">Brand/Item Name</label>
                    <input type="text" id="brandItem" name="brandItem" placeholder="e.g., Nike Air Jordan 1, Gucci Belt, Rolex Submariner">
                </div>

                <div class="form-group">
                    <label for="itemDescription">Item Description & Details</label>
                    <textarea id="itemDescription" name="itemDescription" rows="4" placeholder="Size, color, specific model, any other details..."></textarea>
                </div>

                <div class="form-group">
                    <label for="imageUrl">Image URL (Optional)</label>
                    <input type="url" id="imageUrl" name="imageUrl" placeholder="Paste image link here">
                    <p style="font-size: 0.85rem; color: var(--forest); margin-top: 0.5rem;">
                        Or email images directly to: <strong>gulottajohn7@GMAIL.COM</strong>
                    </p>
               

                <button type="submit" class="btn btn-primary" style="width: 100%; font-size: 1.1rem;">Submit Custom Order Request</button>
            </form>
        </div>
      
    <footer>
        <div class="footer-content">
            <div class="footer-section">
                <h4>About HTXreps</h4>
                <p>Premium replica fashion at accessible prices. Style for everyone.</p>
            </div>
            <div class="footer-section">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="#shop">Shop All</a></li>
                    <li><a href="#custom-order">Custom Orders</a></li>
                    <li><a href="#about">Our Story</a></li>
                    <li><a href="#faq">FAQ</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Customer Care</h4>
                <ul>
                    <li><a href="#shipping">Shipping Info</a></li>
                    <li><a href="#returns">Returns</a></li>
                    <li><a href="#sizing">Size Guide</a></li>
                    <li><a href="#contact">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Connect</h4>
                <ul>
                    <li><a href="John_Gulotta391">Instagram</a></li>

                    <li><a href="gulottajohn7@gmail.com">email</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="legal-notice">
                <p><strong>IMPORTANT NOTICE:</strong> All items sold are replica products. By making a purchase, you acknowledge and agree to the following terms:</p>
                <ul>
                    <li>All purchases require upfront payment</li>
                    <li>Products take a minimum of 2 weeks to receive</li>
                    <li>No refunds on watches, shoes, and accessories</li>
                    <li>package tracking provided via email</li>
                    <li>pictures provided before the order is finalized 15 day time period to recive refund for product</li>
                    <li>Local meet ups or shipping no out of country business </li>
                    <li>If packages are seized or lost, money will NOT be refunded - we will reorder the item instead</li>
                    <li>All sales are final</li>
                </ul>
            </div>
            <p>&copy; 2026 HTXreps. All rights reserved.</p>
        </div>
    </footer>

    <script>
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth', block: 'start' });
                }
            });
       

        document.getElementById('customOrderForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const formData = {
                name: document.getElementById('customerName').value,
                email: document.getElementById('customerEmail').value,
                phone: document.getElementById('customerPhone').value,
                preferredContact: document.getElementById('preferredContact').value,
                brandItem: document.getElementById('brandItem').value,
                description: document.getElementById('itemDescription').value,
                imageUrl: document.getElementById('imageUrl').value,
                budget: document.getElementById('budget').value
            };

            const subject = encodeURIComponent(`Custom Order Request from ${formData.name}`);
            const body = encodeURIComponent(`
CUSTOM ORDER REQUEST
====================

Customer Information:
---------------------
Name: ${formData.name}
Email: ${formData.email}
Phone: ${formData.phone}
Preferred Contact: ${formData.preferredContact}

Order Details:
--------------
Brand/Item: ${formData.brandItem || 'Not specified'}
Description: ${formData.description || 'Not specified'}
Image URL: ${formData.imageUrl || 'Not provided'}
located: ${formData.located || 'Not specified'}

Date Submitted: ${new Date().toLocaleString()}
            `);

            window.location.href = `mailto:gulottajohn7@GMAIL.COM?subject=${subject}&body=${body}`;

            alert(`Thank you, ${formData.name}! Your custom order request has been submitted. We'll contact you at ${formData.preferredContact === 'email' ? formData.email : formData.phone} within 24-48 hours with a quote and invoice.`);
            
            this.reset();
        });

        let lastScroll = 0;
        window.addEventListener('scroll', () => {
            const nav = document.querySelector('nav');
            const currentScroll = window.pageYOffset;
            
            if (currentScroll > 100) {
                nav.style.boxShadow = '0 4px 20px rgba(0,0,0,0.08)';
            } else {
                nav.style.boxShadow = 'none';
            }
            
            lastScroll = currentScroll;
        });
    </script>
</body>
</html>
