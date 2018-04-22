package js.koa;

import js.koa.Koa;
import js.node.fs.Stats;
import externtype.Mixed2;

@:jsRequire("koa-static")
extern class KoaStatic {
    /**
     * Create Koa static file serving middleware.
     * @param root root directory string. nothing above this root directory can be served
     * @param opts options object
     * @return Middleware
     */
    @:selfCall
    public static function serve(root: String, ?opts: KoaStaticOptions): Middleware;
}

typedef KoaStaticOptions = {
    /**
     * Browser cache max-age in milliseconds. defaults to 0
     */
    @:optional var maxage: Int;
    /**
     * Allow transfer of hidden files. defaults to false
     */
    @:optional var hidden: Bool;
    /**
     * Default file name, defaults to 'index.html'
     */
    @:optional var index: String;
    /**
     * If true, serves after return next(), allowing any downstream middleware to respond first.
     */
    @:optional var defer: Bool;
    /**
     * Try to serve the gzipped version of a file automatically when gzip is supported by a client and if the requested file with .gz extension exists. defaults to true.
     */
    @:optional var gzip: Bool;
    /**
     * Try to serve the brotli version of a file automatically when brotli is supported by a client and if the requested file with .br extension exists (note, that brotli is only accepted over https). defaults to true.
     */
    @:optional var br: Bool;
    /**
     * setHeaders Function to set custom headers on response.
     */
    @:optional var setHeaders: Response -> String -> Stats -> Void;
    /**
     * ry to match extensions from passed array to search for file when no extension is sufficed in URL. First found is served. (defaults to false)
     */
    @:optional var extensions: Mixed2<Array<String>, Bool>;
}