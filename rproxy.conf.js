var path = require('path');

module.exports = {
    servers: [
    {
        name: 'js.tv.itc.cn',
        root: '/Users/creep/code/tv/js',
        proxy_pass: 'http://123.126.104.68',
        rewrite: function (filename, req) {

            if (/\S+?(_\d{8}).js$/.test(filename)) {
                return filename.replace(RegExp.$1, '');
            }

            if (/\S+?(\d{8}).js$/.test(filename)) {
                return filename.replace(RegExp.$1, '');
            }

            if (/\S+(_\S{6}).js$/.test(filename)) {
                return filename.replace(RegExp.$1, '');
            }

            return filename;
        }
    },
    {
        name: 'css.tv.itc.cn',
        root: '/Users/creep/code/tv/css',
        proxy_pass: 'http://123.126.104.68',
        setHeader: function (res, req, filename) {
            var exts = ['.eot', '.ttf', '.woff', '.woff2'],
                ext = path.extname(filename).toLowerCase(),
                httpOrigin = req.headers.origin;

            if (exts.indexOf(ext) != -1 && (
                    /sohu.com$/.test(httpOrigin) ||
                    /56.com$/.test(httpOrigin))
                    ) {
                res.setHeader('Access-Control-Allow-Origin', httpOrigin);
            }
        }
    },
    {
        name: 'img.tv.itc.cn',
        root: '/Users/creep/code/tv/img',
        proxy_pass: 'http://123.126.104.68',
    },
    {
        name: 'tv.sohu.com',
        root: '/Users/creep/code/sohu',
        proxy_pass: 'http://123.126.104.68',
        rewrite: function (filename) {

            if (path.extname(filename) == '.js' && !/\.src\./i.test(filename)) {
                filename = filename.replace(/^(.+)(\.js)$/, '$1.src$2');
                console.log(filename);
            }

            return filename;
        }
    },
    {
        name: 'v.tv.sohu.com',
        root: '/Users/creep/code/tv/html',
        proxy_pass: 'http://123.126.104.68'
    },
    {
        name: 'aty.itc.cn',
        root: '/Users/creep/code/player'
    },
    {
        name: 'm.tv.sohu.com',
        root: '/Users/creep/code/tv',
        proxy_pass: 'http://123.125.116.93'
    },
    {
        name: 'm.56.com',
        root: '/Users/creep/code/tv',
        proxy_pass: 'http://222.138.255.18',
    },
    {
        name: 'baby.56.com',
        root: '/Users/creep/code/sohu',
        proxy_pass: 'http://123.126.104.68'
    },
    {
        name: 'opentask.tv.sohu.com',
        root: '/Users/creep/code/tv',
        proxy_pass: 'http://10.22.10.133'
    }
]
};
