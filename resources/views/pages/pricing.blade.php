<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('style.css') }}">
    <link rel="stylesheet" href="{{ asset('faq.css') }}">
    <link rel="stylesheet" href="{{ asset('pricing.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
    <x-header />
    <section id="hero" class="hero d-flex align-items-center">
        <div class="container" id="home">
            <div class="owl-demo">
                <div class="owl-carousel owl-theme">
                    <div class="item">
                        <div class="row">
                            <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="carousel-header">
                                    Grow Your Business with <span class="carousel-header-active">Live</span> Streaming
                                </div>
                                <div class="carousel-footer">
                                    Choose from a pricing plan or custom package suited for professional broadcasting and
                                    video hosting.
                                </div>
                                <div class="carousel-footer ">
                                    <a class="carousel-footer-link" href="">Start your free 30-day trial.</a>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-12 col-sm-12 d-flex ">
                                <div class=" ">

                                </div>
                            </div>


                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="plans-title">
                PLANS
            </div>
        </div>

    </div>
    <div class="container">
        <div class="row card-deck mb-4 ">
            <div class="card mb-4 box-style">
                <div class="box-style-content">
                    <div class="">
                        <h4 class="box-header-standard">Standard</h4>
                        <span class="box-text-1">Affordable for small audiences</span>
                    </div>
                    <div class="box-p-20">
                        <span class="box-price box-price-1">$39</span> <span class="box-expiry-month box-price-1">/ month<span>
                    </div>
                    <div>
                        <span class="box-text-2">Billed Annually</span>
                    </div>
                    <div class=" box-text-3">
                        <button type="button" class="btn btn-primary-standard">FREE TRIAL</button>
                    </div>
                    <div class="box-text-5">
                        <span class="box-text-4 ">1.2 TB</span> per year <br />
                        <span class="box-text-4 ">50 GB</span> storage
                    </div>
                    <div class="box-features">
                        <div class="box-features-title">Top Features include:</div>
                        <ul class="mt-3 mb-4">
                            <li>Live Streaming</li>
                            <li>Video Hosting</li>
                            <li>24/7 Support</li>
                            <li>Unlimited Concurrent Viewers</li>
                            <li>Full 1080p HD Broadcasting</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="card mb-4 box-style">
                <div class="box-style-content">
                    <div class="">
                        <h4 class="box-header-advaned">Advaned</h4>
                        <span class="box-text-1">One time or occasional events</span>
                    </div>
                    <div class="box-p-20">
                        <span class="box-price box-price-2">$63</span> <span class="box-expiry-month box-price-2">/ month<span></span>
                    </div>
                    <div>
                        <span class="box-text-2">Billed Annually</span>
                    </div>
                    <div class="box-text-3">
                        <button type="button" class="btn btn-primary-advaned">FREE TRIAL</button>
                    </div>
                    <div class="box-text-5">
                        <span class="box-text-4 ">6 TB</span> per year <br />
                        <span class="box-text-4 ">50 GB</span> storage
                    </div>
                    <div class="box-features">
                        <div class="box-features-title">Top Features include:</div>
                        <ul class="mt-3 mb-4">
                            <li>Real-Time Analytics</li>
                            <li>Live & VOD Playlists</li>
                            <li>Live Countdown</li>
                            <li>Paywall</li>
                            <li>Pre, Mid & Post Roll Advertising</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="card mb-4 box-style">
                <div class="box-style-content">
                    <div class="">
                        <h4 class="box-header-premium">Premium</h4>
                        <span class="box-text-1">Affordable for small audiences</span>
                    </div>
                    <div class="box-p-20">
                        <span class="box-price box-price-3">$188</span> <span class="box-expiry-month box-price-3">/ month<span></span>
                    </div>
                    <div>
                        <span class="box-text-2">Billed Annually</span>
                    </div>
                    <div class="box-text-3">
                        <button type="button" class="btn btn-primary-premium">FREE TRIAL</button>
                    </div>
                    <div class="box-text-5">
                        <span class="box-text-4 ">24 TB</span> per year <br />
                        <span class="box-text-4 ">1000 GB</span> storage
                    </div>
                    <div class="box-features">
                        <div class="box-features-title">Everything in Event +</div>
                        <ul class="mt-3 mb-4">
                            <li>Phone Support</li>
                            <li>Unlimited Channels</li>
                            <li>VOD Chapter Markers</li>
                            <li>Advanced Library Management</li>
                            <li>3 team members</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="card mb-4 box-style">
                <div class="box-style-content">
                    <div class="">
                        <h4 class="box-header-custom">Custom</h4>
                        <span class="box-text-3">Affordable for small audiences</span>
                    </div>
                    <div class="box-p-20">
                        <span class=""></span> <span class="box-price-custom  box-price-4">High Volume Needs?</span>
                    </div>
                    <div>
                        <span class="box-text-2">&nbsp</span>
                    </div>
                    <div class="box-text-4">
                        <button type="button" class="btn btn-primary-custom">CONTACT US</button>
                    </div>
                    <div class="box-text-5">
                        Contact us for a custom plan tailored to your enterprise.
                    </div>
                    <div class="box-features">
                        <div class="box-features-title">Top Features include:</div>
                        <ul class="mt-3 mb-4">
                            <li>Added Support</li>
                            <li>Special Features</li>
                            <li>Custom SLAs</li>
                            <li>Migrations / Integrations</li>
                            <li>Large Scale Events</li>
                            <li>5 team members</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid  opinion-plan-include">
        <div class="container plan-include-box">
            <div class="col-lg-12 plan-include-title">ALL PLAN INCLUDE</span></div>
            <div class="feature-boxes">
                <div class="feature-box">
                    <div class="feature-icon">
                        <img class="plan-include-icon" src="../img/live-stream-recording.png" />
                    </div>
                    <div class="feature-icon-text">
                        <div class="plan-include-header">
                            Live Stream Recording
                        </div>
                        <div class="plan-include-content">
                            Auto-archive your live streams for on-demand playback.
                        </div>
                    </div>
                </div>
                <div class="feature-box">
                    <div class="feature-icon">
                        <img class="plan-include-icon" src="../img/unlimited-concurrent-viewers.png" />
                    </div>
                    <div class="feature-icon-text">
                        <div class="plan-include-header">
                            Unlimited Concurrent Viewers
                        </div>
                        <div class="plan-include-content">
                            Host live streams with an unlimited number of viewers around the world.
                        </div>
                    </div>
                </div>
                <div class="feature-box">
                    <div class="feature-icon">
                        <img class="plan-include-icon" src="../img/ad-free-hd-streaming.png" />
                    </div>
                    <div class="feature-icon-text">
                        <div class="plan-include-header">
                            Ad-Free HD Streaming
                        </div>
                        <div class="plan-include-content">
                            Stream distraction-free by eliminating ads & logos from third-party brands.
                        </div>
                    </div>
                </div>
                <div class="feature-box">
                    <div class="feature-icon">
                        <img class="plan-include-icon" src="../img/secure-platform.png" />
                    </div>
                    <div class="feature-icon-text">
                        <div class="plan-include-header">
                            Secure Platform
                        </div>
                        <div class="plan-include-content">
                            Keep your video content safe with dynamic token security, password protection & more.
                        </div>
                    </div>
                </div>
                <div class="feature-box">
                    <div class="feature-icon">
                        <img class="plan-include-icon" src="../img/all-plan-include-1.png" />
                    </div>
                    <div class="feature-icon-text">
                        <div class="plan-include-header">
                            Live Stream Recording
                        </div>
                        <div class="plan-include-content">
                            Auto-archive your live streams for on-demand playback.
                        </div>
                    </div>
                </div>
                <div class="feature-box">
                    <div class="feature-icon">
                        <img class="plan-include-icon" src="../img/all-plan-include-2.png" />
                    </div>
                    <div class="feature-icon-text">
                        <div class="plan-include-header">
                            Live Stream Recording
                        </div>
                        <div class="plan-include-content">
                            Auto-archive your live streams for on-demand playback.
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <div class="container-fluid  ">
        <div class="container plan-include-box">
            <div class="col-lg-12 plan-include-title">FREQUENTLY ASKED QUESTIONS</span></div>
        </div>
        <div class="container box-faq">
            <ul id="accordion" class="col-sm-6 col-md-12">
                <!-- Questions -->
                <li>
                    <div id="choose" data-toggle="collapse" data-target="#collapseZero" aria-expanded="true" aria-controls="collapseOne">
                        What if I go over my total bandwidth on my account?
                        <span class="fa fa-caret-down fa-1x text-info-black pull-right"></span>
                    </div>
                    <div id="collapseZero" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            <p>Either your streams will shut off, or you can enable overage protection which will charge at $0.25 a GB for each that you go over.</p>
                            <p>Overage protection is an optional feature, and when enabled will activate when you go over your monthly allotment of bandwidth and don’t have any rollover bandwidth remaining. In this instance, your overage protection will kick in and the selected payment method, such as a credit card, will be drawn from for the specific amount automatically.</p>
                            <p>If you don’t have overage protection set up and would like to, click PURCHASE in the upper right and enable it.</p>
                        </div>
                    </div>
                </li>

                <li>
                    <div id="choose" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Does bandwidth roll over on monthly plans?
                        <span class="fa fa-caret-down fa-1x text-info-black pull-right"></span>
                    </div>
                    <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            Yes. All extra bandwidth not used to stream video or audio will roll over to the next month. This bandwidth will continue to roll over until used or until the monthly plan is canceled.
                        </div>
                    </div>
                </li>

                <li>
                    <div id="choose" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapseOne">
                        Does my bandwidth expire?
                        <span class="fa fa-caret-down fa-1x text-info-black pull-right"></span>
                    </div>
                    <div id="collapse2" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            Yes, all bandwidth expires 12 months after you first got it. So event pricing bandwidth expires a year after its original purchase. This also works for monthly plans. For example, if you signed up for a monthly plan in January, the first month of bandwidth would expire in 12 months, while your second month of bandwidth would expire in 12 months after you got it (so February of the next year).
                        </div>
                    </div>
                </li>
                <li>
                    <div id="choose" data-toggle="collapse" data-target="#collapse3" aria-expanded="true" aria-controls="collapseOne">
                        Are there any startup fees?
                        <span class="fa fa-caret-down fa-1x text-info-black pull-right"></span>
                    </div>
                    <div id="collapse3" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            No. There are no startup fees when using any of the pricing plans at Dacast.
                        </div>
                    </div>
                </li>
                <li>
                    <div id="choose" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapseOne">
                        How do storage fees work?
                        <span class="fa fa-caret-down fa-1x text-info-black pull-right"></span>
                    </div>
                    <div id="collapse4" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            <p>Dacast offers a generous amount of storage for all accounts. If you go over the amount for the Starter and Pro options then you will be charged $0.15 per GB every month.</p>
                            <p>Event plans are a little different. This is charged $0.15 per GB over the limit, but needs to be pre-purchased rather than billed afterward.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div id="choose" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapseOne">
                        How are viewer hours calculated?
                        <span class="fa fa-caret-down fa-1x text-info-black pull-right"></span>
                    </div>
                    <div id="collapse5" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            Viewer hours assuming streaming at 750kbps as the overall video-audio quality.
                        </div>
                    </div>
                </li>
                <li>
                    <div id="choose" data-toggle="collapse" data-target="#collapse6" aria-expanded="true" aria-controls="collapseOne">
                        If I sign up for a monthly fee, how long am I locked into that plan?
                        <span class="fa fa-caret-down fa-1x text-info-black pull-right"></span>
                    </div>
                    <div id="collapse6" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            All monthly plans require a three month minimum if paid month-to-month.
                        </div>
                    </div>
                </li>
                <li>
                    <div id="choose" data-toggle="collapse" data-target="#collapse7" aria-expanded="true" aria-controls="collapseOne">
                        Why do I have to pay 3 months upfront for the premium plan if I choose to pay monthly?
                        <span class="fa fa-caret-down fa-1x text-info-black pull-right"></span>
                    </div>
                    <div id="collapse7" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            <p>After the initial prepaid three months, you are charged on a month-to-month basis. This charge will be reflected on the source used for purchase. For example, if you paid by credit card for a Starter plan on January 5th then it will be charged for $25 on the fourth month on the 5th of that month.</p>
                            <p>Recurring charges are automatic, but accounts can be canceled at any time by submitting a ticket from your Dacast account, including prior to the prepaid months expiring to stop the recurring charges. If you cancel during your prepaid period, service will continue up until the business day before you would be charged.</p>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="faq-contact-us">
                Have more questions? <a href="#">Contact Us</a>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 box-strart-streaming-for-free">
                <div class="box-trial-free">
                    <div class="box-trial-free-title1">START STREAMING FOR FREE </div>
                    <div class="box-trial-free-title2">NO CREDIT CARD REQUIRED</div>
                    <div class="box-trial-free-title3"> <button type="button" class="btn btn-primary-trial-free">YES, I WANT MY FREE TRIAL</button></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(function() {
            //$(".chevron-down").
            $("div[data-toggle=collapse]").click(function() {
                $(this).children('span').toggleClass("fa-caret-up fa-caret-down");
            });
        })
    </script>
    <x-footer />
</body>

</html>