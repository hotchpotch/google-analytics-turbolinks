if window.history?.pushState and window.history.replaceState
  document.addEventListener 'page:change', (event) =>

    # Google Analytics
    if window.ga != undefined
      ga('send', 'pageview')
    else if window._gaq != undefined
      _gaq.push(['_trackPageview'])
    else if window.pageTracker != undefined
      pageTracker._trackPageview()
