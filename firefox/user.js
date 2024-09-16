/* general preferences */
user_pref("browser.aboutConfig.showWarning", false);
user_pref("browser.warnOnQuitShortcut", false);
user_pref("browser.discovery.enabled", false);
user_pref("browser.startup.homepage", "chrome://browser/content/blanktab.html");
user_pref("dom.security.https_only_mode", true);
user_pref("geo.enabled", false);
user_pref("extensions.pocket.enabled", false);

/* userChrome: uncomment if you use the userChrome in this repo */
//user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

/* AI */
user_pref("browser.ml.chat.enabled", false);
user_pref("browser.ml.chat.prompt.prefix", "");
user_pref("browser.ml.chat.prompts.0", "");
user_pref("browser.ml.chat.prompts.1", "");
user_pref("browser.ml.chat.prompts.2", "");
user_pref("browser.ml.chat.prompts.3", "");
user_pref("browser.ml.chat.provider", "");
user_pref("browser.ml.chat.shortcuts", false);
user_pref("browser.ml.chat.sidebar", false);
user_pref("browser.ml.enable", false);
user_pref("browser.ml.modelHubRootURL", "");

/* data reporting */
user_pref("app.normandy.api_url", "");
user_pref("app.normandy.enabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);

/* only accept first party cookies */
user_pref("network.cookie.cookieBehavior", 1);

/* DNS over HTTPS */
user_pref("network.trr.mode", 3);
user_pref("network.trr.uri", "https://firefox.dns.nextdns.io/");

/* site permissions */
user_pref("permissions.default.camera", 2);
user_pref("permissions.default.default-notification", 2);
user_pref("permissions.default.geo", 2);
user_pref("permissions.default.microphone", 2);
user_pref("permissions.default.xr", 2);

/* sensors */
user_pref("device.sensors.enabled", false);
user_pref("device.sensors.motion.enabled", false);
user_pref("device.sensors.orientation.enabled", false);
user_pref("device.sensors.proximity.enabled", false);

/* new tab page */
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.newtabpage.activity-stream.showSearch", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.newtabpage.activity-stream.showWeather", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);
user_pref("browser.newtabpage.activity-stream.discoverystream.enabled", false);
user_pref("browser.newtabpage.activity-stream.discoverystream.personalization.enabled", false);
user_pref("browser.newtabpage.activity-stream.discoverystream.sendToPocket.enabled", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.feeds.weatherfeed", false);
user_pref("browser.newtabpage.activity-stream.feeds.discoverystreamfeed", false);
user_pref("browser.newtabpage.activity-stream.feeds.places", false);
user_pref("browser.newtabpage.activity-stream.feeds.prefs", false);
user_pref("browser.newtabpage.activity-stream.feeds.system.topsites", false);
user_pref("browser.newtabpage.activity-stream.feeds.system.topstories", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includeBookmarks", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includeDownloads", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includeVisited", false);
user_pref("browser.newtabpage.activity-stream.system.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.system.showWeather", false);

/* dangerous browsing */
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);

/* suggest */
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.addons", false);
user_pref("browser.urlbar.suggest.bookmark", false);
user_pref("browser.urlbar.suggest.calculator", false);
user_pref("browser.urlbar.suggest.clipboard", false);
user_pref("browser.urlbar.suggest.engines", false);
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.mdn", false);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.pocket", false);
user_pref("browser.urlbar.suggest.recentsearches", false);
user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.urlbar.suggest.topsites", false);
user_pref("browser.urlbar.suggest.trending", false);
user_pref("browser.urlbar.suggest.weather", false);
user_pref("browser.urlbar.suggest.yelp", false);
user_pref("browser.urlbar.quicksuggest.enabled", false);
user_pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false);
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);

/* autofill */
user_pref("browser.urlbar.autoFill", false);
user_pref("dom.forms.autocomplete.formautofill", false);
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.addresses.capture.enabled", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("signon.autofillForms", false);
