<%@ Page Title="" Language="C#" MasterPageFile="~/Project01-CV/CVBuldier.Master" AutoEventWireup="true" CodeBehind="Defualt.aspx.cs" Inherits="WebApplication_SDK_10_2019.Project01_CV.Defualt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="resume-builder">
        <header class="section--triangles section--large text--center mt-114--desktop mt-94--tablet mt-76--phone">
            <div class="grid">
                <h1 class="text--center text--white text--width-small text--center">Online CV Builder</h1>
                <p class="mt-20--phone text--white">Choose a Template. Fill in the Blank Spaces. Download &amp; Land the Job.</p>
            </div>
        </header>
        <nav class="navigation">
            <div class="grid navigation__wrapper">
                <div class="navigation__switcher-wrapper"><span class="navigation__switcher button navigation__switcher--active">CV/Resume </span><a class="navigation__switcher button" title="Cover letter templates" href="/cover-letter-builder">Cover letter templates</a></div>
                <div class="navigation__categories"><span class="navigation__category button navigation__item navigation__category--active" data-category-id="Most Popular">Most Popular </span><span class="navigation__category button navigation__item" data-category-id="Creative">Creative </span><span class="navigation__category button navigation__item" data-category-id="Professional">Professional </span><span class="navigation__category button navigation__item" data-category-id="Modern">Modern </span><span class="navigation__category button navigation__item" data-category-id="Simple">Simple</span></div>
            </div>
        </nav>
        <section class="template-list grid">
            <h2 class="text--center">Pick a CV template</h2>
            <div class="grid__row">
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="3" data-template-type="cv" data-category-id="Creative">
                    <div class="template__image">
                        <img alt="Professional Resume Template Cascade" data-src="https://cdn-images.zety.com/templates/zety/cascade-3-duo-blue-navy-21.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Cascade</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="10" data-template-type="cv" data-category-id="Creative">
                    <div class="template__image">
                        <img alt="Professional Resume Template Concept" data-src="https://cdn-images.zety.com/templates/zety/concept-10-classic-blue-navy-312.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Concept</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="15" data-template-type="cv" data-category-id="Creative">
                    <div class="template__image">
                        <img alt="Professional Resume Template Crisp" data-src="https://cdn-images.zety.com/templates/zety/crisp-15-classic-silver-dark-388.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Crisp</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height" data-template-id="20" data-template-type="cv" data-category-id="Most Popular, Professional, Modern, Simple, Recommended">
                    <div class="template__image">
                        <img alt="Professional Resume Template Cubic" data-src="https://cdn-images.zety.com/templates/zety/cubic-20-trio-silver-dark-19.png" data-srcset="" src="https://cdn-images.zety.com/templates/zety/cubic-20-trio-silver-dark-19.png" data-loaded="true">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Cubic</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height" data-template-id="19" data-template-type="cv" data-category-id="Most Popular, Professional, Recommended">
                    <div class="template__image">
                        <img alt="Professional Resume Template Vibes" data-src="https://cdn-images.zety.com/templates/zety/vibes-19-classic-blue-navy-452.png" data-srcset="" src="https://cdn-images.zety.com/templates/zety/vibes-19-classic-blue-navy-452.png" data-loaded="true">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Vibes</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height" data-template-id="21" data-template-type="cv" data-category-id="Most Popular, Professional, Modern, Recommended">
                    <div class="template__image">
                        <img alt="Professional Resume Template Diamond" data-src="https://cdn-images.zety.com/templates/zety/diamond-21-duo-silver-dark-999.png" data-srcset="" src="https://cdn-images.zety.com/templates/zety/diamond-21-duo-silver-dark-999.png" data-loaded="true">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Diamond</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height" data-template-id="18" data-template-type="cv" data-category-id="Most Popular, Professional, Recommended">
                    <div class="template__image">
                        <img alt="Professional Resume Template Enfold" data-src="https://cdn-images.zety.com/templates/zety/enfold-18-duo-blue-navy-1165.png" data-srcset="" src="https://cdn-images.zety.com/templates/zety/enfold-18-duo-blue-navy-1165.png" data-loaded="true">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Enfold</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="9" data-template-type="cv" data-category-id="Creative">
                    <div class="template__image">
                        <img alt="Professional Resume Template Iconic" data-src="https://cdn-images.zety.com/templates/zety/iconic-9-classic-silver-dark-276.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Iconic</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="8" data-template-type="cv" data-category-id="Modern">
                    <div class="template__image">
                        <img alt="Professional Resume Template Influx" data-src="https://cdn-images.zety.com/templates/zety/influx-8-duo-silver-dark-971.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Influx</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="5" data-template-type="cv" data-category-id="Modern">
                    <div class="template__image">
                        <img alt="Professional Resume Template Initials" data-src="https://cdn-images.zety.com/templates/zety/initials-5-classic-blue-navy-228.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Initials</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="4" data-template-type="cv" data-category-id="Simple">
                    <div class="template__image">
                        <img alt="Professional Resume Template Minimo" data-src="https://cdn-images.zety.com/templates/zety/minimo-4-classic-blue-navy-200.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Minimo</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="57" data-template-type="cv" data-category-id="Creative, Modern">
                    <div class="template__image">
                        <img alt="Professional Resume Template Modern" data-src="https://cdn-images.zety.com/templates/zety/modern-57-classic-blue-navy-3568.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Modern</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height" data-template-id="2" data-template-type="cv" data-category-id="Most Popular, Professional, Recommended">
                    <div class="template__image">
                        <img alt="Professional Resume Template Muse" data-src="https://cdn-images.zety.com/templates/zety/muse-2-classic-blue-navy-172.png" data-srcset="" src="https://cdn-images.zety.com/templates/zety/muse-2-classic-blue-navy-172.png" data-loaded="true">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Muse</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="16" data-template-type="cv" data-category-id="Simple">
                    <div class="template__image">
                        <img alt="Professional Resume Template Nanica" data-src="https://cdn-images.zety.com/templates/zety/nanica-16-classic-silver-dark-416.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Nanica</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height" data-template-id="14" data-template-type="cv" data-category-id="Most Popular, Professional, Recommended">
                    <div class="template__image">
                        <img alt="Professional Resume Template Newcast" data-src="https://cdn-images.zety.com/templates/zety/newcast-14-classic-blue-navy-368.png" data-srcset="" src="https://cdn-images.zety.com/templates/zety/newcast-14-classic-blue-navy-368.png" data-loaded="true">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Newcast</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="6" data-template-type="cv" data-category-id="Creative, Simple">
                    <div class="template__image">
                        <img alt="Professional Resume Template Primo" data-src="https://cdn-images.zety.com/templates/zety/primo-6-classic-silver-dark-248.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Primo</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="1" data-template-type="cv" data-category-id="Modern">
                    <div class="template__image">
                        <img alt="Professional Resume Template Simple" data-src="https://cdn-images.zety.com/templates/zety/simple-1-classic-blue-navy-144.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Simple</h2>
                </section>
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height template--hidden" data-template-id="11" data-template-type="cv" data-category-id="Simple">
                    <div class="template__image">
                        <img alt="Professional Resume Template Valera" data-src="https://cdn-images.zety.com/templates/zety/valera-11-classic-silver-dark-332.png" data-srcset="">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Valera</h2>
                </section>
            </div>
        </section>
    </main>
    <section class="section--white section--large overflow-x--hidden">
        <section class="two-column two-column--left">
            <div class="grid">
                <div class="grid__row">
                    <div class="grid__column--desktop--5 grid__column--tablet--6 grid__column--phone--4">
                        <div class="two-column__block-text two-column__block-text--resumebuilder">
                            <p class="two-column__subtitle">Quick. Easy. Professional.</p>
                            <h3 class="two-column__title">Zety <strong>CV Builder</strong></h3>
                            <p class="two-column__description">Our CV creator has already helped millions of users make their CVs fast, and land their dream jobs. Test it yourself! Select one of our 20+ professional CV templates, fill in the blank spaces, and download your CV as a PDF file. We’ll assist you from start to finish.</p>
                            <a href="https://app.zety.com/app/cv" title="Make your CV in 5 minutes" class="button button--normal button--red two-column__button">Make your CV in 5 minutes</a>
                        </div>
                    </div>
                    <div class="grid__column--desktop--7 grid__column--tablet--6 grid__column--phone--4">
                        <img class="two-column__block-image" alt="Resume Builder" data-src="https://cdn-images.zety.com/images/zety/landings/home/zety-resume-builder@3x.jpg" data-srcset="@1 https://cdn-images.zety.com/images/zety/landings/home/zety-resume-builder@1x.jpg, @2 https://cdn-images.zety.com/images/zety/landings/home/zety-resume-builder@2x.jpg, @3 https://cdn-images.zety.com/images/zety/landings/home/zety-resume-builder@3x.jpg" src="https://cdn-images.zety.com/images/zety/landings/home/zety-resume-builder@1x.jpg" data-loaded="true">
                    </div>
                </div>
            </div>
        </section>
</asp:Content>
