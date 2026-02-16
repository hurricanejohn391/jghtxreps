<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HTXreps - Custom Replica Orders</title>
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
            --navy: #2C3E50;
            --gold: #D4A574;
            --teal: #5A9B9B;
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
            background: linear-gradient(135deg, var(--navy) 0%, var(--charcoal) 100%);
            backdrop-filter: blur(10px);
            padding: 1.5rem 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
            border-bottom: 2px solid var(--gold);
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
            color: var(--cream);
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        .nav-links {
            display: flex;
            gap: 2.5rem;
            list-style: none;
        }
        .nav-links a {
            text-decoration: none;
            color: var(--cream);
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
            background: var(--gold);
            transition: width 0.3s ease;
        }
        .nav-links a:hover:after { width: 100%; }
        .nav-links a:hover { color: var(--gold); }
        
        .hero {
            margin-top: 90px;
            min-height: 85vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 4rem 5%;
            text-align: center;
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
            background: radial-gradient(circle, var(--teal) 0%, var(--sage) 50%, transparent 70%);
            opacity: 0.2;
            z-index: 0;
            animation: float 8s ease-in-out infinite;
        }
        .hero::after {
            content: '';
            position: absolute;
            bottom: -30%;
            left: -10%;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, var(--gold) 0%, var(--terracotta) 50%, transparent 70%);
            opacity: 0.15;
            z-index: 0;
            animation: float 10s ease-in-out infinite reverse;
        }
        @keyframes float {
            0%, 100% { transform: translateY(0) rotate(0deg); }
            50% { transform: translateY(-30px) rotate(5deg); }
        }
        .hero-content {
            z-index: 1;
            max-width: 900px;
            animation: fadeInUp 0.8s ease-out 0.2s both;
        }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(40px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 5rem;
            font-weight: 900;
            line-height: 1.1;
            margin-bottom: 1.5rem;
            color: var(--charcoal);
            letter-spacing: -0.03em;
        }
        .hero-subtitle {
            font-size: 1.4rem;
            color: var(--forest);
            margin-bottom: 1.5rem;
            font-weight: 300;
            line-height: 1.8;
        }
        .hero-description {
            font-size: 1.1rem;
            color: var(--charcoal);
            margin-bottom: 3rem;
            line-height: 1.8;
        }
        .btn {
            padding: 1.2rem 3rem;
            border: none;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
            letter-spacing: 0.03em;
            background: var(--terracotta);
            color: white;
            box-shadow: 0 4px 20px rgba(212, 133, 106, 0.3);
            border-radius: 4px;
        }
        .btn:hover {
            background: #C07458;
            transform: translateY(-2px);
            box-shadow: 0 6px 25px rgba(212, 133, 106, 0.4);
        }

        .info-section {
            padding: 6rem 5%;
            background: linear-gradient(135deg, #ffffff 0%, var(--cream) 50%, #f5f5f5 100%);
        }
        .section-title {
            text-align: center;
            font-family: 'Playfair Display', serif;
            font-size: 3rem;
            font-weight: 700;
            margin-bottom: 3rem;
            color: var(--charcoal);
        }
        .info-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 3rem;
            max-width: 1200px;
            margin: 0 auto;
        }
        .info-card {
            background: var(--cream);
            padding: 2.5rem;
            border-radius: 12px;
            border-left: 4px solid var(--teal);
            transition: all 0.3s ease;
        }
        .info-card:nth-child(2) {
            border-left-color: var(--terracotta);
        }
        .info-card:nth-child(3) {
            border-left-color: var(--gold);
        }
        .info-card:nth-child(4) {
            border-left-color: var(--sage);
        }
        .info-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(90, 155, 155, 0.2);
        }
        .info-card h3 {
            font-family: 'Playfair Display', serif;
            font-size: 1.8rem;
            margin-bottom: 1rem;
            color: var(--navy);
        }
        .info-card p {
            color: var(--forest);
            line-height: 1.8;
            font-size: 1rem;
        }
        .info-card p strong {
            background: linear-gradient(135deg, var(--terracotta) 0%, var(--gold) 100%);
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            display: inline-block;
            font-size: 1.1rem;
            box-shadow: 0 4px 15px rgba(212, 133, 106, 0.3);
        }
        .info-card ul {
            list-style: none;
            padding: 0;
            margin-top: 1rem;
        }
        .info-card ul li {
            padding: 0.5rem 0;
            color: var(--charcoal);
            font-weight: 500;
        }
        .info-card ul li:before {
            content: "→";
            margin-right: 0.5rem;
            color: var(--terracotta);
            font-weight: 700;
        }

        .custom-order-section {
            padding: 6rem 5%;
            background: linear-gradient(180deg, var(--cream) 0%, var(--sand) 100%);
        }
        .custom-order-form-container {
            max-width: 900px;
            margin: 0 auto;
            background: white;
            padding: 3.5rem;
            border-radius: 12px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.08);
        }
        .form-intro {
            text-align: center;
            margin-bottom: 3rem;
        }
        .form-intro h2 {
            font-family: 'Playfair Display', serif;
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: var(--charcoal);
        }
        .form-intro p {
            font-size: 1.1rem;
            color: var(--forest);
            line-height: 1.8;
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
            padding: 1rem 1.2rem;
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
            min-height: 120px;
        }
        
        .payment-info {
            background: var(--sand);
            padding: 2rem;
            border-radius: 8px;
            margin: 2rem 0;
            text-align: center;
        }
        .payment-info h3 {
            font-family: 'Playfair Display', serif;
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--charcoal);
        }
        .payment-info ul {
            list-style: none;
            padding: 0;
        }
        .payment-info ul li {
            padding: 0.4rem 0;
            color: var(--charcoal);
        }
        .payment-info ul li:before {
            content: "✓";
            margin-right: 0.5rem;
            color: var(--terracotta);
            font-weight: bold;
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
        }
        .legal-notice {
            background: var(--terracotta);
            color: white;
            border: 3px solid var(--charcoal);
            border-radius: 12px;
            padding: 2rem;
            margin-bottom: 2rem;
            opacity: 1;
            box-shadow: 0 8px 30px rgba(0,0,0,0.3);
        }
        .legal-notice p {
            font-size: 1.1rem;
            margin-bottom: 1.5rem;
            line-height: 1.6;
            font-weight: 600;
        }
        .legal-notice strong {
            font-size: 1.3rem;
            text-decoration: underline;
            display: block;
            margin-bottom: 0.5rem;
        }
        .legal-notice ul {
            list-style: none;
            padding: 0;
            font-size: 1rem;
            background: rgba(255,255,255,0.1);
            padding: 1.5rem;
            border-radius: 8px;
        }
        .legal-notice ul li {
            margin-bottom: 0.8rem;
            padding-left: 1.5rem;
            position: relative;
            font-weight: 500;
        }
        .legal-notice ul li:before {
            content: "⚠";
            position: absolute;
            left: 0;
            font-weight: bold;
            font-size: 1.2rem;
        }
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 3rem;
            }
            .nav-links {
                display: none;
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
            <li><a href="#order">Order Now</a></li>
            <li><a href="#info">What We Offer</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>

    <section class="hero">
        <div class="hero-content">
            <h1>Custom Replica Orders</h1>
            <p class="hero-subtitle">Premium Quality. Unbeatable Prices. Your Style.</p>
            <p class="hero-description">Tell us what you want, and we'll source it for you. From luxury watches to designer clothing, we get you the replicas you're looking for at prices that won't break the bank.</p>
            <a href="#order" class="btn">Start Your Custom Order</a>
        </div>
    </section>

    <section style="background: linear-gradient(135deg, var(--navy) 0%, var(--teal) 100%); padding: 2rem 5%; text-align: center; color: white; box-shadow: 0 4px 20px rgba(0,0,0,0.15);">
        <div style="max-width: 1200px; margin: 0 auto;">
            <h3 style="font-family: 'Playfair Display', serif; font-size: 2rem; margin-bottom: 1rem;">⚠️ Important Notice</h3>
            <p style="font-size: 1.1rem; line-height: 1.8; margin-bottom: 1rem;"><strong>ALL ITEMS ARE REPLICA PRODUCTS</strong></p>
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 1.5rem; margin-top: 1.5rem;">
                <div style="background: rgba(255,255,255,0.15); padding: 1rem; border-radius: 10px; backdrop-filter: blur(10px);">
                    <p style="font-size: 1rem; font-weight: 600;">💳 Upfront payment required</p>
                </div>
                <div style="background: rgba(255,255,255,0.15); padding: 1rem; border-radius: 10px; backdrop-filter: blur(10px);">
                    <p style="font-size: 1rem; font-weight: 600;">📦 2+ week delivery time</p>
                </div>
                <div style="background: rgba(255,255,255,0.15); padding: 1rem; border-radius: 10px; backdrop-filter: blur(10px);">
                    <p style="font-size: 1rem; font-weight: 600;">🔄 No refunds (reorders only)</p>
                </div>
                <div style="background: rgba(255,255,255,0.15); padding: 1rem; border-radius: 10px; backdrop-filter: blur(10px);">
                    <p style="font-size: 1rem; font-weight: 600;">🇺🇸 US/Local only</p>
                </div>
            </div>
        </div>
    </section>

    <section class="info-section" id="info">
        <h2 class="section-title">What We Can Get For You</h2>
        <div class="info-grid">
            <div class="info-card">
                <h3>⌚ Watches</h3>
                <p><strong>$390-500</strong></p>
                <ul>
                    <li>Rolex</li>
                    <li>Audemars Piguet</li>
                    <li>Cartier</li>
                    <li>And more luxury brands etc.</li>
                </ul>
            </div>

            <div class="info-card">
                <h3>👟 Shoes</h3>
                <p><strong>$160-180 | EU 39-45</strong></p>
                <ul>
                    <li>YSL</li>
                    <li>Timberland</li>
                    <li>Louis Vuitton</li>
                    <li>Christian Louboutin</li>
                    <li>Dior</li>
                    <li>Burberry</li>
                    <li>etc.</li>
                </ul>
            </div>

            <div class="info-card">
                <h3>👕 Y2K/Designer Clothes</h3>
                <p><strong>$60-120 | S, M, L, XL</strong></p>
                <ul>
                    <li>Chrome Hearts</li>
                    <li>Maison Margiela</li>
                    <li>Rick Owens</li>
                    <li>Balenciaga</li>
                    <li>Moncler</li>
                    <li>etc.</li>
                </ul>
            </div>

            <div class="info-card">
                <h3>💼 Accessories/Fragrance</h3>
                <p><strong>$60-150</strong></p>
                <ul>
                    <li>YSL</li>
                    <li>Versace</li>
                    <li>Valentino</li>
                    <li>Chrome Hearts</li>
                    <li>Louis Vuitton</li>
                    <li>Moncler</li>
                    <li>etc.</li>
                </ul>
            </div>
        </div>
    </section>

    <section class="custom-order-section" id="order">
        <div class="custom-order-form-container">
            <div class="form-intro">
                <h2>Place Your Custom Order</h2>
                <p>Fill out the form below with what you're looking for. Send us images, brand names, or detailed descriptions. We'll get back to you within 24-48 hours with availability and total price.</p>
            </div>

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
                    <label for="itemType">What are you looking for? *</label>
                    <select id="itemType" name="itemType" required>
                        <option value="">Select category...</option>
                        <option value="watches">Watches ($390-500)</option>
                        <option value="shoes">Shoes ($160-180)</option>
                        <option value="clothes">Y2K/Designer Clothes ($60-120)</option>
                        <option value="accessories">Accessories/Fragrance ($60-150)</option>
                        <option value="other">Other/Multiple Items</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="brandItem">Brand/Item Name *</label>
                    <input type="text" id="brandItem" name="brandItem" placeholder="e.g., Rolex Submariner, Nike Air Jordan 1, Chrome Hearts Hoodie" required>
                </div>

                <div class="form-group">
                    <label for="itemDescription">Full Description & Details *</label>
                    <textarea id="itemDescription" name="itemDescription" rows="6" placeholder="Include: Size, color, specific model, style, any other details that will help us find exactly what you want..." required></textarea>
                </div>

                <div class="form-group">
                    <label for="imageUrl">Image URL (Optional)</label>
                    <input type="url" id="imageUrl" name="imageUrl" placeholder="Paste image link here if you have one">
                    <p style="font-size: 0.85rem; color: var(--forest); margin-top: 0.5rem;">
                        Or email images directly to: <strong>gulottajohn7@gmail.com</strong>
                    </p>
                </div>

                <div class="payment-info">
                    <h3>💳 Payment Process</h3>
                    <p><strong>Upfront payment required before shipping</strong></p>
                    <p style="margin-top: 1rem;">After you submit this form, we'll send you an invoice via email or text with:</p>
                    <ul style="text-align: left; margin: 1rem auto; max-width: 400px;">
                        <li>Final price confirmation</li>
                        <li>Payment instructions</li>
                        <li>Order details</li>
                    </ul>
                    <p style="font-size: 1rem; font-weight: 600; color: var(--charcoal); margin-top: 1.5rem;">We accept:</p>
                    <div style="display: flex; gap: 2rem; justify-content: center; margin-top: 1rem; flex-wrap: wrap;">
                        <div style="text-align: center; background: linear-gradient(135deg, var(--teal) 0%, var(--sage) 100%); padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 15px rgba(90, 155, 155, 0.2);">
                            <p style="font-size: 1.5rem; font-weight: 700; color: white;">$gulotta391</p>
                            <p style="font-size: 0.9rem; color: white; opacity: 0.9;">Cash App</p>
                        </div>
                        <div style="text-align: center; background: linear-gradient(135deg, var(--terracotta) 0%, var(--gold) 100%); padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 15px rgba(212, 133, 106, 0.2);">
                            <p style="font-size: 1.2rem; font-weight: 700; color: white;">gulottajohn7@gmail.com</p>
                            <p style="font-size: 0.9rem; color: white; opacity: 0.9;">PayPal</p>
                        </div>
                    </div>
                    <p style="font-size: 0.95rem; color: var(--forest); margin-top: 1.5rem;">Once payment is received, we'll begin sourcing your order</p>
                </div>

                <button type="submit" class="btn" style="width: 100%; font-size: 1.2rem;">Submit Order Request</button>
            </form>
        </div>
    </section>

    <footer id="contact">
        <div class="footer-content">
            <div class="footer-section">
                <h4>HTXreps</h4>
                <p>Premium replica fashion at accessible prices. We source what you want.</p>
            </div>
            <div class="footer-section">
                <h4>Contact</h4>
                <ul>
                    <li><a href="https://instagram.com/John_Gulotta391" target="_blank">Instagram: @John_Gulotta391</a></li>
                    <li><a href="mailto:gulottajohn7@gmail.com">Email: gulottajohn7@gmail.com</a></li>
                    <li>Cash App: $gulotta391</li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Location</h4>
                <ul>
                    <li>Houston, TX</li>
                    <li>Local meet ups available</li>
                    <li>US shipping only</li>
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
                    <li>Package tracking provided via email</li>
                    <li>Pictures provided before the order is finalized - 15 day time period to receive refund for product</li>
                    <li>Local meet ups or shipping - no out of country business</li>
                    <li>If packages are seized or lost, money will NOT be refunded - we will reorder the item instead</li>
                    <li>All sales are final</li>
                </ul>
            </div>
            <p style="opacity: 0.7;">&copy; 2026 HTXreps. All rights reserved.</p>
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
        });

        document.getElementById('customOrderForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const formData = {
                name: document.getElementById('customerName').value,
                email: document.getElementById('customerEmail').value,
                phone: document.getElementById('customerPhone').value,
                preferredContact: document.getElementById('preferredContact').value,
                itemType: document.getElementById('itemType').value,
                brandItem: document.getElementById('brandItem').value,
                description: document.getElementById('itemDescription').value,
                imageUrl: document.getElementById('imageUrl').value
            };

            const subject = encodeURIComponent(`Custom Order Request from ${formData.name}`);
            const body = encodeURIComponent(`
CUSTOM ORDER REQUEST - HTXreps
================================

Customer Information:
---------------------
Name: ${formData.name}
Email: ${formData.email}
Phone: ${formData.phone}
Preferred Contact: ${formData.preferredContact}

Order Details:
--------------
Category: ${formData.itemType}
Brand/Item: ${formData.brandItem}
Description: ${formData.description}
Image URL: ${formData.imageUrl || 'Not provided'}

Date Submitted: ${new Date().toLocaleString()}

Payment Options: Cash App $gulotta391 or PayPal gulottajohn7@gmail.com
            `);

            window.location.href = `mailto:gulottajohn7@gmail.com?subject=${subject}&body=${body}`;

            alert(`Thank you, ${formData.name}! Your custom order request has been submitted.\n\nNext Steps:\n1. We'll review your request\n2. We'll send you an invoice via ${formData.preferredContact === 'email' ? 'email' : 'text'} within 24-48 hours\n3. Invoice will include final price and payment instructions\n\nPayment Options:\n• Cash App: $gulotta391\n• PayPal: gulottajohn7@gmail.com\n\nOnce payment is received, we'll start sourcing your order.\n\nQuestions? Contact us at gulottajohn7@gmail.com`);
            
            this.reset();
        });

        let lastScroll = 0;
        window.addEventListener('scroll', function() {
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
