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
                <div class="navigation__categories">

                    <span class="navigation__category button navigation__item navigation__category--active" data-category-id="Most Popular">Most Popular </span>
                    <span class="navigation__category button navigation__item" data-category-id="Creative">Creative </span>
                    <span class="navigation__category button navigation__item" data-category-id="Professional">Professional </span>
                    <span class="navigation__category button navigation__item" data-category-id="Modern">Modern </span>
                    <span class="navigation__category button navigation__item" data-category-id="Simple">Simple</span>

                </div>
            </div>
        </nav>
        <section class="template-list grid">
            <h2 class="text--center">Pick a CV template</h2>
            <div class="grid__row">
                
                <section class="template grid__column--phone--6 grid__column--tablet--4 grid__column--desktop--3 template--no-height" data-template-id="20" data-template-type="cv" data-category-id="Most Popular, Professional, Modern, Simple, Recommended">
                    <div class="template__image">
                        <img alt="Professional Resume Template Cubic" data-src="https://cdn-images.zety.com/templates/zety/cubic-20-trio-silver-dark-19.png" data-srcset="" src="https://cdn-images.zety.com/templates/zety/cubic-20-trio-silver-dark-19.png" data-loaded="true">
                        <span class="button button--medium button--red template__button">Use this template</span>
                    </div>
                    <h2 class="template__title">Cubic</h2>
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
        </section>
</asp:Content>
