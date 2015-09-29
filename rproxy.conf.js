var path = require( 'path' );
module.exports = {
    servers : [
        {
            name : 'js.tv.itc.cn',
            root : '/Users/creep/code/tv/js',
            proxy_pass : 'http://61.135.132.59',
            rewrite : function ( filename, req ) {

                if ( /\S+?(_\d{8}).js$/.test( filename ) ) {
                    return filename.replace( RegExp.$1, '' );
                }

                if ( /\S+?(\d{8}).js$/.test( filename ) ) {
                    return filename.replace( RegExp.$1, '' );
                }

                if ( /\S+(_\S{6}).js$/.test( filename ) ) {
                    return filename.replace( RegExp.$1, '' );
                }

                return filename;
            }
        },
        {
            name : 'css.tv.itc.cn',
            root : '/Users/creep/code/tv/css',
            proxy_pass : 'http://61.135.132.59'
        },
        {
            name : 'img.tv.itc.cn',
            root : '/Users/creep/code/tv/img',
            proxy_pass : 'http://61.135.132.59',
        },
        {
            name : 'tv.sohu.com',
            root : '/Users/creep/code/sohu',
            proxy_pass : 'http://61.135.132.59',
            rewrite : function ( filename ) {

                if ( path.extname( filename ) == '.js' && !/\.src\./i.test( filename ) ) {
                    filename = filename.replace( /^(.+)(\.js)$/, '$1.src$2' );
                    console.log(filename);
                }

                return filename;
            }
        },
        {
            name : 'm.tv.sohu.com',
            root : '/Users/creep/code/tv',
            proxy_pass : 'http://123.125.116.93'
        },
        {
            name : 'm.56.com',
            root : '/Users/creep/code/sohu',
            proxy_pass : 'http://60.5.254.10',
        },
        {
            name : 'baby.56.com',
            root : '/Users/creep/code/sohu',
            proxy_pass : 'http://61.135.132.59'
        },
        {
            name : 'opentask.tv.sohu.com',
            root : '/Users/creep/code/tv',
            proxy_pass : 'http://10.22.10.133'
        }
    ]
};
