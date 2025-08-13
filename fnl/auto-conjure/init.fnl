(local {: autoload} (require :conjure.nfnl.module))
(local a (autoload :conjure.nfnl.core))
(local {: decode} (autoload :auto-conjure.edn))

(fn shadow-cljs-content []
  (a.slurp :shadow-cljs.edn))

(fn build-key [tbl]
  (a.first (a.keys (a.get tbl :builds))))

(fn build-key-content []
  (a.slurp :.build-key.edn))

(fn shadow_build_id []
  (if (build-key-content)
      (build-key-content)
      (build-key (decode (shadow-cljs-content)))))

{: shadow_build_id}
