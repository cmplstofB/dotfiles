// 利用者補助（文字読み上げなど）を無効に
//   参考: https://support.mozilla.org/ja/kb/accessibility-services
user_pref("services.sync.prefs.sync.accessibility.force_disabled", 1);
user_pref("accessibility.force_disabled", 1);
// 好修CSS
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("services.sync.prefs.sync.toolkit.legacyUserProfileCustomizations.stylesheets", true);
// 挙動
//   使用順タブの循環
user_pref("browser.ctrlTab.previews", true);
user_pref("services.sync.prefs.sync.browser.ctrlTab.previews", true);
// 色
user_pref("browser.display.use_system_colors", true);
user_pref("browser.display.background_color", "#383C4A");
user_pref("browser.display.foreground_color", "#D3DAE3");
user_pref("browser.anchor_color", "#a9caf1");
user_pref("browser.visited_color", "#5294e2");
user_pref("services.sync.prefs.sync.browser.display.use_system_colors", true);
user_pref("services.sync.prefs.sync.browser.display.background_color", "#383C4A");
user_pref("services.sync.prefs.sync.browser.display.foreground_color", "#D3DAE3");
user_pref("services.sync.prefs.sync.browser.anchor_color", "#a9caf1");
user_pref("services.sync.prefs.sync.browser.visited_color", "#5294e2");
// 色調
user_pref("widget.content.allow-gtk-dark-theme", true);
user_pref("browser.in-content.dark-mode", true);
user_pref("services.sync.prefs.sync.widget.content.allow-gtk-dark-theme", true);
user_pref("services.sync.prefs.sync.browser.in-content.dark-mode", true);
// 全画面表示の円滑移行を禁止
user_pref("browser.fullscreen.autohide", false);
user_pref("services.sync.prefs.sync.browser.fullscreen.autohide", false);
// Firefoxホームコンテンツの設定
//   ウェブ検索のみ
user_pref("services.sync.prefs.sync.browser.newtabpage.activity-stream.showTopSites", false);
user_pref("browser.newtabpage.activity-stream.showTopSites", false);
user_pref("services.sync.prefs.sync.browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("services.sync.prefs.sync.browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
// ワンクリック検索エンジンを全て無効に
user_pref("services.sync.prefs.sync.browser.search.hiddenOneOffs", "Google,Yahoo! JAPAN,Bing,Amazon.co.jp,楽天市場,ヤフオク!,教えて！goo,Twitter,Wikipedia (ja),Debian packages,DuckDuckGo");
user_pref("browser.search.hiddenOneOffs", "Google,Yahoo! JAPAN,Bing,Amazon.co.jp,楽天市場,ヤフオク!,教えて！goo,Twitter,Wikipedia (ja),Debian packages,DuckDuckGo");
// ロケーションバー
//   「http://」表示
user_pref("services.sync.prefs.sync.browser.urlbar.trimURLs", false);
user_pref("browser.urlbar.trimURLs", false);
//   マウスによる文字列選択を通常のWebページ上での挙動と同じに
user_pref("services.sync.prefs.sync.browser.urlbar.doubleClickSelectsAll", false);
user_pref("browser.urlbar.doubleClickSelectsAll", false);
// 開発ツールの設定
//   配色
user_pref("services.sync.prefs.sync.devtools.theme", "dark");
user_pref("devtools.theme", "dark");
//   位置
user_pref("services.sync.prefs.sync.devtools.toolbox.host", "right");
user_pref("devtools.toolbox.host", "right");
//   インスペクター・コンソール・デバッガー・スタイルエディター・ネットワーク以外のツール及びiframe選択ボタンを隠蔽
user_pref("services.sync.prefs.sync.devtools.accessibility.enabled", false);
user_pref("services.sync.prefs.sync.devtools.command-button-frames.enabled", false);
user_pref("services.sync.prefs.sync.devtools.memory.enabled", false);
user_pref("services.sync.prefs.sync.devtools.performance.enabled", false);
user_pref("services.sync.prefs.sync.devtools.storage.enabled", false);
user_pref("services.sync.prefs.sync.devtools.webextensions.https-everywhere@eff.org.enabled", false);
user_pref("services.sync.prefs.sync.devtools.toolbox.tabsOrder", "inspector,webconsole,jsdebugger,styleeditor,netmonitor");
user_pref("services.sync.prefs.sync.devtools.application.enabled", false);
user_pref("devtools.accessibility.enabled", false);
user_pref("devtools.memory.enabled", false);
user_pref("devtools.performance.enabled", false);
user_pref("devtools.storage.enabled", false);
user_pref("devtools.webextensions.https-everywhere@eff.org.enabled", false);
user_pref("devtools.toolbox.tabsOrder", "inspector,webconsole,jsdebugger,styleeditor,netmonitor");
user_pref("devtools.command-button-frames.enabled", false);
user_pref("devtools.application.enabled", false);
//   ブラウザーとアドオンのデバッガーを有効化
user_pref("services.sync.prefs.sync.devtools.chrome.enabled", true);
user_pref("devtools.chrome.enabled", true);
//   リモートデバッガーを有効化
user_pref("services.sync.prefs.sync.devtools.debugger.remote-enabled", true);
user_pref("devtools.debugger.remote-enabled", true);
// ページ内検索ですべて強調表示を有効化
user_pref("services.sync.prefs.sync.findbar.highlightAll", true);
user_pref("findbar.highlightAll", true);
// リーダービューの設定
user_pref("services.sync.prefs.sync.reader.font_type", "serif");
user_pref("services.sync.prefs.sync.reader.color_scheme", "dark");
user_pref("services.sync.prefs.sync.reader.content_width", 7);
user_pref("services.sync.prefs.sync.reader.font_size", 3);
user_pref("reader.font_type", "serif");
user_pref("reader.color_scheme", "dark");
user_pref("reader.content_width", 7);
user_pref("reader.font_size", 3);
// ページのソースを表示するとき行を折り返す
user_pref("services.sync.prefs.sync.view_source.wrap_long_lines", true);
user_pref("view_source.wrap_long_lines", true);
// DRM制御のコンテンツを再生する
user_pref("services.sync.prefs.sync.media.eme.enabled", true);
user_pref("media.eme.enabled", true);
// フォント
user_pref("font.default.he", "serif");
user_pref("font.default.ja", "serif");
user_pref("font.default.ko", "serif");
user_pref("font.default.th", "serif");
user_pref("font.default.zh-CN", "serif");
user_pref("font.default.zh-HK", "serif");
user_pref("font.default.zh-TW", "serif");
user_pref("font.language.group", "ja");
user_pref("font.minimum-size.ar", 9);
user_pref("font.minimum-size.el", 9);
user_pref("font.minimum-size.he", 9);
user_pref("font.minimum-size.ja", 9);
user_pref("font.minimum-size.ko", 9);
user_pref("font.minimum-size.th", 9);
user_pref("font.minimum-size.x-armn", 9);
user_pref("font.minimum-size.x-beng", 9);
user_pref("font.minimum-size.x-cans", 9);
user_pref("font.minimum-size.x-cyrillic", 9);
user_pref("font.minimum-size.x-devanagari", 9);
user_pref("font.minimum-size.x-ethi", 9);
user_pref("font.minimum-size.x-geor", 9);
user_pref("font.minimum-size.x-gujr", 9);
user_pref("font.minimum-size.x-khmr", 9);
user_pref("font.minimum-size.x-knda", 9);
user_pref("font.minimum-size.x-math", 9);
user_pref("font.minimum-size.x-mlym", 9);
user_pref("font.minimum-size.x-orya", 9);
user_pref("font.minimum-size.x-sinh", 9);
user_pref("font.minimum-size.x-tamil", 9);
user_pref("font.minimum-size.x-telu", 9);
user_pref("font.minimum-size.x-tibt", 9);
user_pref("font.minimum-size.x-unicode", 9);
user_pref("font.minimum-size.x-western", 9);
user_pref("font.minimum-size.zh-CN", 9);
user_pref("font.minimum-size.zh-HK", 9);
user_pref("font.minimum-size.zh-TW", 9);
user_pref("font.name.monospace.ar", "Noto Sans Arabic");
user_pref("font.name.monospace.el", "Noto Sans Mono");
user_pref("font.name.monospace.he", "Noto Sans Hebrew");
user_pref("font.name.monospace.ja", "Noto Sans Mono CJK JP");
user_pref("font.name.monospace.ko", "Noto Sans Mono CJK KR");
user_pref("font.name.monospace.th", "Noto Sans Thai");
user_pref("font.name.monospace.x-armn", "Noto Sans Armenian");
user_pref("font.name.monospace.x-beng", "Noto Sans Bengali");
user_pref("font.name.monospace.x-cans", "Noto Sans Canadian Aboriginal");
user_pref("font.name.monospace.x-cyrillic", "Noto Sans Mono");
user_pref("font.name.monospace.x-devanagari", "Noto Sans Devanagari");
user_pref("font.name.monospace.x-ethi", "Noto Sans Ethiopic");
user_pref("font.name.monospace.x-geor", "Noto Sans Georgian");
user_pref("font.name.monospace.x-gujr", "Noto Sans Gujarati");
user_pref("font.name.monospace.x-guru", "Noto Sans Gurmukhi");
user_pref("font.name.monospace.x-khmr", "Noto Sans Khmer");
user_pref("font.name.monospace.x-knda", "Noto Sans Kannada");
user_pref("font.name.monospace.x-math", "MathJax_Typewriter");
user_pref("font.name.monospace.x-mlym", "Noto Sans Malayalam");
user_pref("font.name.monospace.x-orya", "Noto Sans Oriya");
user_pref("font.name.monospace.x-sinh", "Noto Sans Sinhala");
user_pref("font.name.monospace.x-tamil", "Noto Sans Tamil");
user_pref("font.name.monospace.x-telu", "Noto Sans Telugu");
user_pref("font.name.monospace.x-tibt", "Noto Sans Tibetan");
user_pref("font.name.monospace.x-unicode", "Noto Sans Mono");
user_pref("font.name.monospace.x-western", "Noto Sans Mono");
user_pref("font.name.monospace.zh-CN", "Noto Sans Mono CJK SC");
user_pref("font.name.monospace.zh-HK", "Noto Sans Mono CJK TC");
user_pref("font.name.monospace.zh-TW", "Noto Sans Mono CJK TC");
user_pref("font.name.sans-serif.ar", "Noto Sans Arabic");
user_pref("font.name.sans-serif.el", "Noto Sans");
user_pref("font.name.sans-serif.he", "Noto Sans Hebrew");
user_pref("font.name.sans-serif.ja", "Noto Sans CJK JP");
user_pref("font.name.sans-serif.ko", "Noto Sans CJK KR");
user_pref("font.name.sans-serif.th", "Noto Serif Thai");
user_pref("font.name.sans-serif.x-armn", "Noto Sans Armenian");
user_pref("font.name.sans-serif.x-beng", "Noto Sans Bengali");
user_pref("font.name.sans-serif.x-cans", "Noto Sans Canadian Aboriginal");
user_pref("font.name.sans-serif.x-cyrillic", "Noto Sans");
user_pref("font.name.sans-serif.x-devanagari", "Noto Sans Devanagari");
user_pref("font.name.sans-serif.x-ethi", "Noto Sans Ethiopic");
user_pref("font.name.sans-serif.x-geor", "Noto Sans Georgian");
user_pref("font.name.sans-serif.x-gujr", "Noto Sans Gujarati");
user_pref("font.name.sans-serif.x-guru", "Noto Sans Gurmukhi");
user_pref("font.name.sans-serif.x-khmr", "Noto Sans Khmer");
user_pref("font.name.sans-serif.x-knda", "Noto Sans Kannada");
user_pref("font.name.sans-serif.x-math", "MathJax_SansSerif");
user_pref("font.name.sans-serif.x-mlym", "Noto Sans Malayalam");
user_pref("font.name.sans-serif.x-orya", "Noto Sans Oriya");
user_pref("font.name.sans-serif.x-sinh", "Noto Sans Sinhala");
user_pref("font.name.sans-serif.x-tamil", "Noto Sans Tamil");
user_pref("font.name.sans-serif.x-telu", "Noto Sans Telugu");
user_pref("font.name.sans-serif.x-tibt", "Noto Sans Tibetan");
user_pref("font.name.sans-serif.x-unicode", "Noto Sans");
user_pref("font.name.sans-serif.x-western", "Noto Sans");
user_pref("font.name.sans-serif.zh-CN", "Noto Sans CJK SC");
user_pref("font.name.sans-serif.zh-HK", "Noto Sans CJK TC");
user_pref("font.name.sans-serif.zh-TW", "Noto Sans CJK TC");
user_pref("font.name.serif.ar", "Noto Naskh Arabic");
user_pref("font.name.serif.el", "Noto Serif");
user_pref("font.name.serif.he", "Noto Serif Hebrew");
user_pref("font.name.serif.ja", "Noto Serif CJK JP");
user_pref("font.name.serif.ko", "Noto Serif CJK KR");
user_pref("font.name.serif.th", "Noto Sans Thai");
user_pref("font.name.serif.x-armn", "Noto Serif Armenian");
user_pref("font.name.serif.x-beng", "Noto Serif Bengali");
user_pref("font.name.serif.x-cans", "Noto Serif");
user_pref("font.name.serif.x-cyrillic", "Noto Serif");
user_pref("font.name.serif.x-devanagari", "Noto Serif Devanagari");
user_pref("font.name.serif.x-ethi", "Noto Serif Ethiopic");
user_pref("font.name.serif.x-geor", "Noto Serif Georgian");
user_pref("font.name.serif.x-gujr", "Noto Serif Gujarati");
user_pref("font.name.serif.x-guru", "Noto Serif Gurmukhi");
user_pref("font.name.serif.x-khmr", "Noto Serif Khmer");
user_pref("font.name.serif.x-knda", "Noto Serif Kannada");
user_pref("font.name.serif.x-math", "MathJax_Main");
user_pref("font.name.serif.x-mlym", "Noto Serif Malayalam");
user_pref("font.name.serif.x-orya", "Noto Serif Bengali");
user_pref("font.name.serif.x-sinh", "Noto Serif Sinhala");
user_pref("font.name.serif.x-tamil", "Noto Serif Tamil");
user_pref("font.name.serif.x-telu", "Noto Serif Telugu");
user_pref("font.name.serif.x-tibt", "Noto Serif Tibetan");
user_pref("font.name.serif.x-unicode", "Noto Serif");
user_pref("font.name.serif.x-western", "Noto Serif");
user_pref("font.name.serif.zh-CN", "Noto Serif CJK SC");
user_pref("font.name.serif.zh-HK", "Noto Serif CJK TC");
user_pref("font.name.serif.zh-TW", "Noto Serif CJK TC");
user_pref("font.size.fixed.ar", 14);
user_pref("font.size.fixed.el", 14);
user_pref("font.size.fixed.he", 14);
user_pref("font.size.fixed.th", 14);
user_pref("font.size.fixed.x-armn", 14);
user_pref("font.size.fixed.x-beng", 14);
user_pref("font.size.fixed.x-cans", 14);
user_pref("font.size.fixed.x-cyrillic", 14);
user_pref("font.size.fixed.x-devanagari", 14);
user_pref("font.size.fixed.x-ethi", 14);
user_pref("font.size.fixed.x-geor", 14);
user_pref("font.size.fixed.x-gujr", 14);
user_pref("font.size.fixed.x-khmr", 14);
user_pref("font.size.fixed.x-knda", 14);
user_pref("font.size.fixed.x-math", 14);
user_pref("font.size.fixed.x-mlym", 14);
user_pref("font.size.fixed.x-orya", 14);
user_pref("font.size.fixed.x-sinh", 14);
user_pref("font.size.fixed.x-tamil", 14);
user_pref("font.size.fixed.x-telu", 14);
user_pref("font.size.fixed.x-tibt", 14);
user_pref("font.size.fixed.x-unicode", 14);
user_pref("font.size.fixed.x-western", 14);
