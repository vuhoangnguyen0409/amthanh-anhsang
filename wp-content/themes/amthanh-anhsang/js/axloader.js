/*!
 * AXLoader ver. 1.1.0
 * Ajax Loader for WordPress
 *
 * Copyright (c) 2019-2020
 * Rascals Themes
 *
 */
var AXloader = function() {
    "use strict";
    const e = {
        debug: !1,
        loadPielineScripts: !0,
        searchForms: "#searchform",
        startDelay: 1200,
        callbacksWait: !1,
        extraOffset: 20,
        nav: "#nav-main",
        headerContainer: "#header",
        permalinks: !1,
        urlFragments: ["wp-admin", "wp-login", "feed", ".jpg", ".png", ".gif", ".zip", ".pdf", ".mp3"],
        jsFragments: ["var wpcf7", '{"@context"'],
        blacklistSelectors: [".ajax__off"],
        blacklist_events: [],
        blacklistLinks: [],
        reloadScripts: [],
        reloadContainers: ["#wpadminbar"],
        preloadImages: !0,
        load_only_local_images: !0,
        end: function() {},
        start: function() {},
        startJS: function() {},
        progress: function() {},
        redirect: function() {},
        scroll: function() {}
    };
    let t = {};
    const n = {
            win_url: window.location,
            host: window.location.hostname,
            styles: [],
            scripts: [],
            to_scroll: !1,
            loading: !1
        },
        o = function() {
            let e = 60,
                n = t.extraOffset,
                o = document.querySelector(t.headerContainer);
            return o && (e = o.offsetHeight), e += n
        },
        l = function(e, n) {
            let o = {
                el: e,
                offset: n
            };
            t.scroll(o)
        },
        r = function(e, t, n, o) {
            e.addEventListener(t, function(e) {
                e.target.matches(n + ", " + n + " *") && o.apply(e.target.closest(n), arguments)
            }, !1)
        },
        i = function(e) {
            return e.filter(function(t, n) {
                return e.indexOf(t) === n
            })
        },
        c = function(e, t) {
            return e.filter(function(e) {
                return -1 == t.indexOf(e)
            })
        },
        s = (e, n = "") => !0 === t.debug ? console.log(e, n) : void 0,
        a = {
            callback: null,
            imagesToLoad: 0,
            get: function(e) {
                a.callback = e && "function" == typeof e ? e : g.end, !1 === t.preloadImages && setTimeout(() => {
                    a.callback()
                }, t.startDelay);
                let o = document.querySelectorAll("img"),
                    l = [],
                    r = [];
                for (let e = 0; e < o.length; e++) {
                    let t = o[e],
                        i = t.getAttribute("src");
                    !1 === t.classList.contains("lazy") && null !== i && (i.includes(n.host) ? r.push(i) : l.push(i))
                }!1 === t.load_only_local_images && (r = r.concat(l)), r = i(r), a.imagesToLoad = r, a.load(0, a.imagesToLoad.length)
            },
            load: function(e, n) {
                0 === n || e === n ? (t.progress.call(100), a.finished()) : a.preloadImage(a.imagesToLoad[e], function(o, l) {
                    s(l ? "Number of loaded images:" : "Image does not loaded:", ++e);
                    let r = e / n * 80;
                    r += 20, t.progress.call(r), a.load(e, n)
                })
            },
            preloadImage: function(e, t) {
                let n = new Image;
                n.onload = function() {
                    t(e, !0)
                }, n.onerror = function() {
                    t(e, !1)
                }, n.src = e
            },
            finished: function() {
                s("All images are loaded"), a.callback()
            }
        },
        d = {
            trigger: null,
            init: function() {
                d.disableAjax()
            },
            clickAction: function(e) {
                d.trigger = this;
                let t = this.getAttribute("href"),
                    r = t.split("#"),
                    i = d.target,
                    c = this.classList;
                if (!0 === n.loading || "#" === t || t === n.win_url.href) return e.preventDefault(), !1;
                if (r && void 0 !== r[1]) {
                    let i = r[0];
                    if (r = r[1], "" === i || t === i) {
                        if (document.getElementById(r)) {
                            let e = document.getElementById(r),
                                t = o();
                            l(e, t)
                        }
                        return e.preventDefault(), !1
                    }
                    t = i, n.to_scroll = r
                }
                d.checkLink(t, i, c, d.trigger) & d.checkFragments(t, i) && (history.pushState(null, null, t), u.init(), e.preventDefault())
            },
            redirect: function(e) {
                s("Redirect:", e), t.redirect.call(this, e)
            },
            disableAjax: function() {
                for (let e of t.blacklistSelectors) {
                    let t = document.querySelectorAll(e);
                    if (t.length > 0)
                        for (let e of t) e.classList.add("ajax__off")
                }
            },
            blackListSelector: function(e) {
                for (let n of t.blacklistSelectors) {
                    let t = document.querySelectorAll(n);
                    if (t.length > 0)
                        for (let n of t)
                            if (n == e) return !0
                }
                return !1
            },
            checkLink: function(e, o, l, r) {
                let i = "#",
                    c = "";
                return !d.blackListSelector(r) && (new URL(e) && (c = e.split("\\").pop().split("/").pop().split(".")[0], i = new URL(e)), !1 === t.permalinks && (c = ""), i.host === n.win_url.host && "_blank" !== o && "" === c && ((!0 !== t.permalinks || i.pathname !== n.win_url.pathname) && i.hash === n.win_url.hash))
            },
            checkFragments: function(e, n) {
                let o = !0;
                for (let n of t.urlFragments) e.indexOf(n) > -1 && (o = !1);
                return o
            },
            checkExcludeLinks: function(e) {
                let n = !1,
                    o = e.href;
                for (let e of t.blacklistLinks) o.indexOf(e) > -1 && (n = !0);
                return n
            }
        },
        u = {
            init: function() {
                if (!1 === n.loading) {
                    n.loading = !0;
                    let e = window.location;
                    if (d.checkExcludeLinks(e)) d.redirect(e);
                    else {
                        s("Start AJAX loading");
                        let n = {
                            firstLoad: !1,
                            trigger: d.trigger
                        };
                        t.callbacksWait ? t.start.call(n, function() {
                            u.load(e)
                        }) : (t.start.call(n), u.load(e)), d.trigger = !1
                    }
                }
            },
            load: function(e) {
                t.progress.call(10);
                let n = new XMLHttpRequest;
                n.responseType = "document", n.onload = u.onLoad, n.addEventListener("progress", u.progress, !1), n.open("GET", e, !0), n.send()
            },
            onLoad: function() {
                if (200 != this.status) s("Ajax error: ", this.statusText), t.permalinks ? window.location.href = t.baseUrl + "/?error=404" : window.location.href = t.baseUrl + "/404";
                else {
                    t.progress.call(20), s("Ajax status:", this.status);
                    let e = document.createElement("div"),
                        n = this.response.querySelector("html");
                    e.innerHTML = n, f.doc = n, f.init()
                }
            },
            progress: function(e) {
                if (e.lengthComputable) {
                    let t = e.loaded / e.total;
                    s("Ajax loading progress: ", t)
                } else s("Ajax loading progress: ", e.loaded)
            }
        },
        f = {
            doc: null,
            new_scripts: [],
            init: function() {
                f.setScripts(), f.clearDocumentHead()
            },
            setScripts: function() {
                let e = f.doc,
                    n = document.querySelectorAll("script"),
                    o = e.querySelectorAll("script"),
                    l = [],
                    r = [],
                    i = [],
                    s = [];
                for (let e of n) e.src && r.push(e.src);
                for (let e of o)
                    if (e.src && (i.push(e.src), t.reloadScripts))
                        for (let n of t.reloadScripts) e.src.indexOf(n) >= 0 && l.push(e.src);
                i = c(i, r), t.reloadScripts && t.reloadScripts.length && (i = i.concat(l)), s = i.filter(function(e, t) {
                    return i.indexOf(e) === t
                }), f.new_scripts = s
            },
            clearDocumentHead: function() {
                f.doc.querySelector("head");
                let e = document.querySelector("head");
                n.styles = [];
                for (let t of e.childNodes) t.textContent.indexOf("html { margin-top: 32px !important; }") > -1 && (t.id = "wp-admin-bar"), t.id && n.styles.push(t.id);
                let t = e.childNodes.length;
                var o = 1;
                for (let l of e.childNodes) setTimeout(function() {
                    !1 === n.styles.includes(l.id) && e.removeChild(l), o === t && f.addNewDocumentHead(), o++
                }, 10)
            },
            addNewDocumentHead: function() {
                let e = f.doc.querySelector("head"),
                    t = document.querySelector("head"),
                    o = e.childNodes.length;
                var l = 1;
                for (let r of e.childNodes) setTimeout(function() {
                    !1 === n.styles.includes(r.id) && t.appendChild(r), l === o && f.body(), l++
                }, 10)
            },
            body: function() {
                let e = f.doc.querySelector("body"),
                    t = e.classList;
                document.querySelector("body").classList = t;
                let n = e.querySelector("#ajax-content");
                document.querySelector("#ajax-content").replaceWith(n);
                let o = document.querySelector(".ax--wp-footer"),
                    r = document.querySelectorAll('.ax--wp-footer > div, .ax--wp-footer > span, .ax--wp-footer > section, .ax--wp-footer script[type="text/template"]'),
                    i = f.doc.querySelectorAll('.ax--wp-footer > div, .ax--wp-footer > span, .ax--wp-footer > section, .ax--wp-footer script[type="text/template"]');
                if (r.length)
                    for (let e of r) s("Remove old node from footer:"), s(e), o.removeChild(e);
                if (i.length)
                    for (let e of i) s("Add new node to footer:"), s(e), o.appendChild(e);
                l(0, 0), f.containers()
            },
            containers: function() {
                let e = f.doc;
                for (let n of t.reloadContainers) {
                    let t = e.querySelector(n),
                        o = document.querySelector(n);
                    if (t && o) {
                        let e = t.innerHTML;
                        o.innerHTML = e
                    }
                }
                f.navigation()
            },
            navigation: function() {
                if ("" !== t.nav) {
                    let e = f.doc.querySelectorAll(t.nav + "  li ");
                    for (let t of e) {
                        let e = t.id,
                            n = t.classList,
                            o = document.getElementById(e);
                        o && (o.classList = n)
                    }
                }
                a.get(f.inlineScripts)
            },
            inlineScripts: function() {
                s("Init inline scripts");
                let e = f.doc.querySelectorAll('script[type="text/javascript"]');
                for (let n of e)
                    if (!n.src) {
                        let e = !0,
                            o = n.innerHTML;
                        for (let n of t.jsFragments) o.indexOf(n) >= 0 && (e = !1);
                        e && f.scriptEval(o, document)
                    } t.startJS.call(), f.scripts()
            },
            scriptEval: function(e, t) {
                var n = (t = t || document).createElement("script");
                n.text = e, s(n), t.head.appendChild(n).parentNode.removeChild(n)
            },
            scripts: function() {
                if (s("Number of scripts to load:", f.new_scripts.length), s("These scripts will be loaded via AJAX:", f.new_scripts), !0 === t.loadPielineScripts) f.loadScripts(0, f.new_scripts.length);
                else {
                    for (let e of f.new_scripts) f.loadSingleScript(e, !0, !0, function() {
                        s("Script loaded:", e)
                    });
                    f.events()
                }
            },
            loadScripts: function(e, t) {
                f.new_scripts.length;
                if (0 === t || e === t) f.events();
                else {
                    const n = f.new_scripts[e];
                    f.loadSingleScript(n, !0, !0, function() {
                        s("Loaded script nr:", e), s("Script loaded:", n), e++, f.loadScripts(e, t)
                    })
                }
            },
            loadSingleScript: function(e, t = !0, n = !0, o) {
                let l = document.createElement("script"),
                    r = document.getElementsByTagName("script");
                r = r[r.length - 1];
                let i = document.querySelector('script[src="' + e + '"]');
                i && i.parentNode.removeChild(i), l.async = t, l.defer = n, l.readyState ? l.onreadystatechange = function() {
                    "loaded" != l.readyState && "complete" != l.readyState || (l.onreadystatechange = null, o())
                } : l.onload = function() {
                    o()
                }, l.src = e, document.head.appendChild(l).parentNode.removeChild(l);
                r.parentNode
            },
            events: function() {
                s("Remove old events"), g.end()
            }
        },
        p = {
            get: function() {
                let e = document.querySelectorAll(t.searchForms);
                for (let t of e)
                    if (!1 === t.classList.contains("has-listener")) {
                        t.classList.add("has-listener"), t.addEventListener("submit", p.submit);
                        let e = t.querySelector('input[type="submit"]');
                        e && e.addEventListener("click", p.submit), t.querySelector("#s").onkeydown = p.enterKey
                    }
            },
            enterKey: function(e) {
                13 === e.keyCode && p.submit
            },
            submit: function(e) {
                let n = this.querySelector("#s");
                if (n && (n = n.value)) {
                    let e = "?s=" + n,
                        o = t.baseUrl + e;
                    history.pushState(null, null, o), u.init()
                }
                e.preventDefault()
            }
        },
        m = function(e) {
            s("History action"), u.init()
        },
        g = {
            start: function() {
                s("First Start: ", Date()), n.loading = !0, r(document, "click", "a[href]", d.clickAction);
                let e = {
                    firstLoad: !0
                };
                t.callbacksWait ? t.start.call(e, function() {
                    a.get(g.end)
                }) : (t.start.call(e), a.get(g.end))
            },
            end: function() {
                if (s("Loading finished"), n.loading = !1, d.init(), p.get(), n.to_scroll) {
                    s("Scroll content");
                    let e = n.to_scroll;
                    if (document.getElementById(e)) {
                        let t = document.getElementById(e),
                            r = o();
                        l(t, r), n.to_scroll = !1
                    }
                }
                t.callbacksWait ? t.end.call(this, function() {}) : t.end.call(this)
            }
        };
    return {
        init: function(n) {
            t = Object.assign({}, e, n);
            let o = ["blacklistSelectors", "reloadContainers", "reloadScripts", "blacklist_events", "blacklistLinks", "jsFragments"];
            for (let e of o) !1 === Array.isArray(t[e]) && "" !== t[e] && (t[e] = t[e].split(","));
            window.addEventListener("popstate", m), g.start()
        },
        loadUrl: function(e) {
            history.pushState(null, null, e), u.init()
        }
    }
	
}();
