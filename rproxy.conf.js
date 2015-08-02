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
            },
            //concatFile : {
            //    '/site/pad/video.js' : [
            //        'site/pad/video/intro.js',    
            //        'site/pad/video/videotrace.js',    
            //        'site/pad/video/playlist.js',    
            //        'site/pad/video/ugcplaylist.js',    
            //        'site/pad/video/kdlist.js',    
            //        'site/pad/video/adplugin.js',    
            //        'site/pad/video/player.js',    
            //        'site/pad/video/feeplayer.js',    
            //        'site/pad/video/factory.js',    
            //        'site/pad/video/outro.js',    
            //        'site/pad/video/speedtest.js',    
            //    ],
            //    '/site/pad/v2/video.js' : [
            //        'site/pad/v2/video/intro.js',    
            //        'site/pad/v2/video/videotrace.js',    
            //        'site/pad/v2/video/playlist.js',    
            //        'site/pad/v2/video/ugcplaylist.js',    
            //        'site/pad/v2/video/kdlist.js',    
            //        'site/pad/v2/video/adplugin.js',    
            //        'site/pad/v2/video/player.js',    
            //        'site/pad/v2/video/feeplayer.js',    
            //        'site/pad/v2/video/factory.js',    
            //        'site/pad/v2/video/outro.js',    
            //        'site/pad/v2/video/speedtest.js',    
            //    ]
            //}
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
                }

                return filename;
            }
        },
        {
            name : '10.2.146.96',
            root : '/Users/creep/code/sohu',
            proxy_pass : 'http://61.135.132.59',
            rewrite : function ( filename ) {

                if ( path.extname( filename ) == '.js' && !/\.src\./i.test( filename ) ) {
                    filename = filename.replace( /^(.+)(\.js)$/, '$1.src$2' );
                }

                return filename;
            }
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
