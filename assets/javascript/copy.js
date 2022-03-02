window.onload = function() {
    var pre = document.getElementsByTagName('pre');
    for (var i = 0; i < pre.length; i++) {
        var b = document.createElement('button');
        b.className = 'clipboard';
        b.textContent = 'Copy';
        if (pre[i].childNodes.length === 1 && pre[i].childNodes[0].nodeType === 3) {
            var div = document.createElement('div');
            div.textContent = pre[i].textContent;
            pre[i].textContent = '';
            pre[i].appendChild(div);
        }
        pre[i].appendChild(b);
    }
    var clipboard = new ClipboardJS('.clipboard', {
       target: function(b) {
            var p = b.parentNode;
            if (p.className.includes("highlight")) {
                var elems = p.getElementsByTagName("code");
                if (elems.length > 0)
                    return elems[0];
            }
            return p.childNodes[0];
        }
    });
    clipboard.on('success', function(e) {
        e.clearSelection();
        e.trigger.textContent = 'Copied';
        setTimeout(function() {
            e.trigger.textContent = 'Copy';
        }, 2000);
    });
    clipboard.on('error', function(e) {
        console.error('Action:', e.action, e);
        console.error('Trigger:', e.trigger);
    });
};
